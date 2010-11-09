# Copyright (c) 2010 Daniel Pfeifer <daniel@pfeifer-mail.de>
#               2010 Stefan Eilemann <eile@eyescale.ch>

set(PLUGIN_HEADERS
  plugins/compressor.h
  plugins/compressorTokens.h
  plugins/compressorTypes.h
  )

set(BASE_HEADERS
  base/atomic.h
  base/base.h
  base/bitOperation.h
  base/buffer.h
  base/clock.h
  base/compareAndSwap.h
  base/debug.h
  base/defines.h
  base/dso.h
  base/error.h
  base/errorRegistry.h
  base/executionListener.h
  base/file.h
  base/global.h
  base/hash.h
  base/idPool.h
  base/init.h
  base/launcher.h
  base/lfQueue.h
  base/lock.h
  base/lockable.h
  base/log.h
  base/memoryMap.h
  base/monitor.h
  base/mtQueue.h
  base/nonCopyable.h
  base/omp.h
  base/perThread.h
  base/perThreadRef.h
  base/pluginRegistry.h
  base/refPtr.h
  base/referenced.h
  base/requestHandler.h
  base/rng.h
  base/scopedMutex.h
  base/sleep.h
  base/spinLock.h
  base/stdExt.h
  base/thread.h
  base/threadID.h
  base/timedLock.h
  base/types.h
  base/uuid.h
  )

set(NET_HEADERS
  net/barrier.h
  net/bufferConnection.h
  net/command.h
  net/commandCache.h
  net/commandFunc.h
  net/commandQueue.h
  net/commands.h
  net/connection.h
  net/connection.ipp
  net/connectionDescription.h
  net/connectionListener.h
  net/connectionSet.h
  net/connectionType.h
  net/dataIStream.h
  net/dataOStream.h
  net/dispatcher.h
  net/global.h
  net/init.h
  net/instanceCache.h
  net/log.h
  net/node.h
  net/nodeType.h
  net/object.h
  net/objectCM.h
  net/objectVersion.h
  net/packets.h
  net/pairConnection.h
  net/session.h
  net/types.h
  net/version.h
  )

set(FABRIC_HEADERS
  fabric/canvas.h
  fabric/canvasPackets.h
  fabric/channel.h
  fabric/colorMask.h
  fabric/commands.h
  fabric/config.h
  fabric/configPackets.h
  fabric/configVisitor.h
  fabric/client.h
  fabric/drawableConfig.h
  fabric/elementVisitor.h
  fabric/eye.h
  fabric/error.h
  fabric/frustum.h
  fabric/global.h
  fabric/layout.h
  fabric/layoutPackets.h
  fabric/iAttribute.h
  fabric/init.h
  fabric/leafVisitor.h
  fabric/log.h
  fabric/node.h
  fabric/nodeType.h
  fabric/object.h
  fabric/observer.h
  fabric/packets.h
  fabric/packetType.h
  fabric/paths.h
  fabric/pipe.h
  fabric/pipePackets.h
  fabric/pixel.h
  fabric/pixelViewport.h
  fabric/projection.h
  fabric/range.h
  fabric/renderContext.h
  fabric/segment.h
  fabric/serializable.h
  fabric/server.h
  fabric/serverPackets.h
  fabric/subPixel.h
  fabric/task.h
  fabric/types.h
  fabric/viewport.h
  fabric/view.h
  fabric/visitorResult.h
  fabric/wall.h
  fabric/window.h
  fabric/windowPackets.h
  fabric/zoom.h
  )

set(CLIENT_HEADERS
  client/aglEventHandler.h
  client/aglMessagePump.h
  client/aglPipe.h
  client/aglWindow.h
  client/aglWindowEvent.h
  client/canvas.h
  client/channel.h
  client/channelPackets.h
  client/channelStatistics.h
  client/client.h
  client/clientPackets.h
  client/commandQueue.h
  client/compositor.h
  client/computeContext.h
  client/config.h
  client/configEvent.h
  client/configPackets.h
  client/configParams.h
  client/configStatistics.h
  client/cudaContext.h
  client/error.h
  client/event.h
  client/eventHandler.h
  client/eye.h
  client/frame.h
  client/frameData.h
  client/frameDataPackets.h
  client/glWindow.h
  client/glXEventHandler.h
  client/glXMessagePump.h
  client/glXPipe.h
  client/glXWindow.h
  client/glXWindowEvent.h
  client/global.h
  client/image.h
  client/init.h
  client/layout.h
  client/log.h
  client/messagePump.h
  client/node.h
  client/nodePackets.h
  client/nodeFactory.h
  client/observer.h
  client/os.h
  client/packets.h
  client/pipe.h
  client/pipePackets.h
  client/pixelData.h
  client/segment.h
  client/server.h
  client/serverPackets.h
  client/statistic.h
  client/statisticSampler.h
  client/systemPipe.h
  client/systemWindow.h
  client/types.h
  client/version.h
  client/view.h
  client/visitorResult.h
  client/wglEventHandler.h
  client/wglMessagePump.h
  client/wglPipe.h
  client/wglWindow.h
  client/wglWindowEvent.h
  client/window.h
  client/windowPackets.h
  client/windowStatistics.h
  client/windowSystem.h
  )

set(UTIL_HEADERS
  util/accum.h
  util/accumBufferObject.h
  util/bitmapFont.h
  util/frameBufferObject.h
  util/objectManager.h
  util/texture.h
  util/types.h
  )

set(BASE_SOURCES
  base/compressor.cpp
  base/cpuCompressor.cpp
  base/debug.cpp
  base/dso.cpp
  base/error.cpp
  base/errorRegistry.cpp
  base/global.cpp
  base/idPool.cpp
  base/init.cpp
  base/launcher.cpp
  base/lock.cpp
  base/log.cpp
  base/memoryMap.cpp
  base/omp.cpp
  base/plugin.cpp
  base/pluginRegistry.cpp
  base/referenced.cpp
  base/requestHandler.cpp
  base/rng.cpp
  base/thread.cpp
  base/threadID.cpp
  base/timedLock.cpp
  base/uuid.cpp
  )

set(NET_SOURCES
  net/barrier.cpp
  net/bufferConnection.cpp
  net/command.cpp
  net/commandCache.cpp
  net/commandQueue.cpp
  net/connection.cpp
  net/connectionDescription.cpp
  net/connectionSet.cpp
  net/dataIStream.cpp
  net/dataOStream.cpp
  net/deltaMasterCM.cpp
  net/dispatcher.cpp
  net/eventConnection.cpp
  net/fdConnection.cpp
  net/fullMasterCM.cpp
  net/global.cpp
  net/init.cpp
  net/instanceCache.cpp
  net/masterCM.cpp
  net/mcipConnection.cpp
  net/namedPipeConnection.cpp
  net/node.cpp
  net/object.cpp
  net/objectCM.cpp
  net/objectDataIStream.cpp
  net/objectDeltaDataIStream.cpp
  net/objectDeltaDataOStream.cpp
  net/objectInstanceDataIStream.cpp
  net/objectInstanceDataOStream.cpp
  net/objectSlaveDataOStream.cpp
  net/objectVersion.cpp
  net/packets.cpp
  net/pairConnection.cpp
  net/pipeConnection.cpp
  net/session.cpp
  net/socketConnection.cpp
  net/staticMasterCM.cpp
  net/staticSlaveCM.cpp
  net/unbufferedMasterCM.cpp
  net/versionedSlaveCM.cpp
  net/pgmConnection.h
  )

set(FABRIC_SOURCES
  fabric/client.cpp
  fabric/colorMask.cpp
  fabric/eye.cpp
  fabric/frustum.cpp
  fabric/global.cpp
  fabric/iAttribute.cpp
  fabric/init.cpp
  fabric/object.cpp
  fabric/pixel.cpp
  fabric/projection.cpp
  fabric/range.cpp
  fabric/renderContext.cpp
  fabric/subPixel.cpp
  fabric/viewport.cpp
  fabric/wall.cpp
  fabric/zoom.cpp
  )

set(CLIENT_SOURCES
  client/canvas.cpp
  client/channel.cpp
  client/channelStatistics.cpp
  client/client.cpp
  client/commandQueue.cpp
  client/compositor.cpp
  client/computeContext.cpp
  client/config.cpp
  client/configEvent.cpp
  client/configParams.cpp
  client/configStatistics.cpp
  client/cudaContext.cpp
  client/error.cpp
  client/event.cpp
  client/eventHandler.cpp
  client/frame.cpp
  client/frameData.cpp
  client/frameDataStatistics.cpp
  client/glWindow.cpp
  client/global.cpp
  client/image.cpp
  client/init.cpp
  client/jitter.cpp
  client/layout.cpp
  client/node.cpp
  client/nodeFactory.cpp
  client/observer.cpp
  client/os.cpp
  client/pipe.cpp
  client/pipeStatistics.cpp
  client/pixelData.cpp
  client/roiEmptySpaceFinder.cpp
  client/roiFinder.cpp
  client/roiTracker.cpp
  client/segment.cpp
  client/server.cpp
  client/statistic.cpp
  client/systemPipe.cpp
  client/systemWindow.cpp
  client/version.cpp
  client/view.cpp
  client/window.cpp
  client/windowStatistics.cpp
  client/windowSystem.cpp
  )

set(UTIL_SOURCES
  util/accum.cpp
  util/accumBufferObject.cpp
  util/bitmapFont.cpp
  util/gpuCompressor.cpp
  util/frameBufferObject.cpp
  util/objectManager.cpp
  util/texture.cpp
  )

set(COMPRESSOR_SOURCES
  compressor/compressor.cpp
  compressor/compressorReadDrawPixels.cpp
  compressor/compressorRLEB.cpp
  compressor/compressorRLE4B.cpp
  compressor/compressorRLE4BU.cpp
  compressor/compressorRLE565.cpp
  compressor/compressorRLE10A2.cpp
  compressor/compressorRLE4HF.cpp
  compressor/compressorRLEYUV.cpp
  compressor/compressorYUV.cpp
  )

if(Boost_FOUND)
  set(NET_SOURCES ${NET_SOURCES} net/rspConnection.cpp)
endif(Boost_FOUND)

if(EQ_AGL_USED)
  set(CLIENT_SOURCES ${CLIENT_SOURCES}
    client/aglEventHandler.cpp
    client/aglMessagePump.cpp
    client/aglWindow.cpp
    client/aglPipe.cpp
    )
endif(EQ_AGL_USED)

if(WIN32)
  set(CLIENT_SOURCES ${CLIENT_SOURCES}
    client/wglEventHandler.cpp
    client/wglMessagePump.cpp
    client/wglWindow.cpp
    client/wglPipe.cpp
    )
  set(NET_SOURCES ${NET_SOURCES}
    net/pgmConnection.cpp
    )
endif(WIN32)

if(EQ_GLX_USED)
  set(CLIENT_SOURCES ${CLIENT_SOURCES}
    client/glXEventHandler.cpp
    client/glXMessagePump.cpp
    client/glXWindow.cpp
    client/glXPipe.cpp
    )
endif(EQ_GLX_USED)

