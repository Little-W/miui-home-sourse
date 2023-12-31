.class final Lcom/miui/home/launcher/ColorFilterContainerView$ColorFilterRevealPrgListener;
.super Ljava/lang/Object;
.source "ColorFilterContainerView.java"

# interfaces
.implements Lcom/miui/home/launcher/allapps/anim/RevealDrawable$RevealProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/ColorFilterContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ColorFilterRevealPrgListener"
.end annotation


# instance fields
.field mProviderWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/home/launcher/ColorFilterContainerView;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/ColorFilterContainerView;Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/miui/home/launcher/ColorFilterContainerView$ColorFilterRevealPrgListener;->this$0:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/home/launcher/ColorFilterContainerView$ColorFilterRevealPrgListener;->mProviderWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onProgress(F)V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView$ColorFilterRevealPrgListener;->mProviderWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 370
    iget-object p0, p0, Lcom/miui/home/launcher/ColorFilterContainerView$ColorFilterRevealPrgListener;->mProviderWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;->setProgress(F)V

    :cond_0
    return-void
.end method

.method public onRevealBegin()V
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/miui/home/launcher/ColorFilterContainerView$ColorFilterRevealPrgListener;->this$0:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-static {p0}, Lcom/miui/home/launcher/ColorFilterContainerView;->access$600(Lcom/miui/home/launcher/ColorFilterContainerView;)V

    return-void
.end method

.method public onRevealCancel()V
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView$ColorFilterRevealPrgListener;->mProviderWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 384
    iget-object p0, p0, Lcom/miui/home/launcher/ColorFilterContainerView$ColorFilterRevealPrgListener;->mProviderWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;->restoreOutLine()V

    :cond_0
    return-void
.end method

.method public onRevealEnd()V
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView$ColorFilterRevealPrgListener;->mProviderWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 377
    iget-object p0, p0, Lcom/miui/home/launcher/ColorFilterContainerView$ColorFilterRevealPrgListener;->mProviderWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;->restoreOutLine()V

    :cond_0
    return-void
.end method
