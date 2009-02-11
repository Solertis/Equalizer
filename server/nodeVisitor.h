
/* Copyright (c) 2008-2009, Stefan Eilemann <eile@equalizergraphics.com> 
   All rights reserved. */

#ifndef EQSERVER_NODEVISITOR_H
#define EQSERVER_NODEVISITOR_H

#include "pipeVisitor.h"

namespace eq
{
namespace server
{
    class Node;

    /**
     * A visitor to traverse non-const nodes and children.
     */
    class NodeVisitor : public PipeVisitor
    {
    public:
        /** Constructs a new NodeVisitor. */
        NodeVisitor(){}
        
        /** Destruct the NodeVisitor */
        virtual ~NodeVisitor(){}

        /** Visit a node on the down traversal. */
        virtual VisitorResult visitPre( Node* node )
            { return TRAVERSE_CONTINUE; }

        /** Visit a node on the up traversal. */
        virtual VisitorResult visitPost( Node* node )
            { return TRAVERSE_CONTINUE; }
    };

    /**
     * A visitor to traverse const nodes and children.
     */
    class ConstNodeVisitor : public ConstPipeVisitor
    {
    public:
        /** Constructs a new NodeVisitor. */
        ConstNodeVisitor(){}
        
        /** Destruct the NodeVisitor */
        virtual ~ConstNodeVisitor(){}

        /** Visit a node on the down traversal. */
        virtual VisitorResult visitPre( const Node* node )
            { return TRAVERSE_CONTINUE; }

        /** Visit a node on the up traversal. */
        virtual VisitorResult visitPost( const Node* node )
            { return TRAVERSE_CONTINUE; }
    };
}
}
#endif // EQSERVER_NODEVISITOR_H
