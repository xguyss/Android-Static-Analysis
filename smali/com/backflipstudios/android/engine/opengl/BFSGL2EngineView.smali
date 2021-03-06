.class public Lcom/backflipstudios/android/engine/opengl/BFSGL2EngineView;
.super Lcom/backflipstudios/android/engine/opengl/BFSGLEngineView;
.source "BFSGL2EngineView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/backflipstudios/android/engine/opengl/BFSGL2EngineView$1;,
        Lcom/backflipstudios/android/engine/opengl/BFSGL2EngineView$ContextFactory;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZLcom/backflipstudios/android/engine/app/BFSEngine;)V
    .locals 8
    .parameter "context"
    .parameter "translucent"
    .parameter "useDepthBuffer"
    .parameter "engine"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/16 v5, 0x8

    const/4 v1, 0x0

    const/4 v4, 0x4

    .line 38
    invoke-direct {p0, p1, p4}, Lcom/backflipstudios/android/engine/opengl/BFSGLEngineView;-><init>(Landroid/content/Context;Lcom/backflipstudios/android/engine/app/BFSEngine;)V

    .line 43
    if-eqz p2, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/backflipstudios/android/engine/opengl/BFSGL2EngineView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    const/4 v3, -0x3

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 48
    :cond_0
    new-instance v2, Lcom/backflipstudios/android/engine/opengl/BFSGL2EngineView$ContextFactory;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/backflipstudios/android/engine/opengl/BFSGL2EngineView$ContextFactory;-><init>(Lcom/backflipstudios/android/engine/opengl/BFSGL2EngineView$1;)V

    invoke-virtual {p0, v2}, Lcom/backflipstudios/android/engine/opengl/BFSGL2EngineView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 53
    if-eqz p2, :cond_3

    .line 54
    new-instance v0, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;

    invoke-direct {v0}, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;-><init>()V

    .line 55
    .local v0, chooser:Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;
    invoke-virtual {v0, v4, v5}, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->setRedSize(II)V

    .line 56
    invoke-virtual {v0, v4, v5}, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->setGreenSize(II)V

    .line 57
    invoke-virtual {v0, v4, v5}, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->setBlueSize(II)V

    .line 58
    invoke-virtual {v0, v4, v5}, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->setAlphaSize(II)V

    .line 59
    if-eqz p3, :cond_2

    const/16 v2, 0x10

    :goto_0
    if-eqz p3, :cond_1

    const/16 v1, 0x18

    :cond_1
    invoke-virtual {v0, v2, v1}, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->setDepthSize(II)V

    .line 60
    invoke-virtual {v0, v6}, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->setContextLevel(I)V

    .line 61
    invoke-virtual {p0, v0}, Lcom/backflipstudios/android/engine/opengl/BFSGL2EngineView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 73
    :goto_1
    invoke-virtual {p0, p4}, Lcom/backflipstudios/android/engine/opengl/BFSGL2EngineView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 74
    return-void

    :cond_2
    move v2, v1

    .line 59
    goto :goto_0

    .line 63
    .end local v0           #chooser:Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;
    :cond_3
    new-instance v0, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;

    invoke-direct {v0}, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;-><init>()V

    .line 64
    .restart local v0       #chooser:Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;
    invoke-virtual {v0, v4, v7}, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->setRedSize(II)V

    .line 65
    const/4 v2, 0x6

    invoke-virtual {v0, v4, v2}, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->setGreenSize(II)V

    .line 66
    invoke-virtual {v0, v4, v7}, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->setBlueSize(II)V

    .line 67
    if-eqz p3, :cond_5

    const/16 v2, 0x10

    :goto_2
    if-eqz p3, :cond_4

    const/16 v1, 0x18

    :cond_4
    invoke-virtual {v0, v2, v1}, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->setDepthSize(II)V

    .line 68
    invoke-virtual {v0, v6}, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->setContextLevel(I)V

    .line 69
    invoke-virtual {p0, v0}, Lcom/backflipstudios/android/engine/opengl/BFSGL2EngineView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    goto :goto_1

    :cond_5
    move v2, v1

    .line 67
    goto :goto_2
.end method
