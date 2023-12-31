.class public interface abstract Lcom/miui/maml/RendererController$Listener;
.super Ljava/lang/Object;
.source "RendererController.java"

# interfaces
.implements Lcom/miui/maml/RendererController$ISelfUpdateRenderable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/RendererController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract finish()V
.end method

.method public abstract init()V
.end method

.method public abstract onHover(Landroid/view/MotionEvent;)V
.end method

.method public abstract onTouch(Landroid/view/MotionEvent;)V
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method

.method public abstract tick(J)V
.end method
