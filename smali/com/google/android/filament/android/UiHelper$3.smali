.class Lcom/google/android/filament/android/UiHelper$3;
.super Ljava/lang/Object;
.source "UiHelper.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/filament/android/UiHelper;->attachTo(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/filament/android/UiHelper;

.field final synthetic val$holder:Landroid/view/SurfaceHolder;


# direct methods
.method constructor <init>(Lcom/google/android/filament/android/UiHelper;Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 520
    iput-object p1, p0, Lcom/google/android/filament/android/UiHelper$3;->this$0:Lcom/google/android/filament/android/UiHelper;

    iput-object p2, p0, Lcom/google/android/filament/android/UiHelper$3;->val$holder:Landroid/view/SurfaceHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 531
    iget-object p1, p0, Lcom/google/android/filament/android/UiHelper$3;->this$0:Lcom/google/android/filament/android/UiHelper;

    invoke-static {p1}, Lcom/google/android/filament/android/UiHelper;->access$000(Lcom/google/android/filament/android/UiHelper;)Lcom/google/android/filament/android/UiHelper$RendererCallback;

    move-result-object p1

    invoke-interface {p1, p3, p4}, Lcom/google/android/filament/android/UiHelper$RendererCallback;->onResized(II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 524
    iget-object p1, p0, Lcom/google/android/filament/android/UiHelper$3;->this$0:Lcom/google/android/filament/android/UiHelper;

    iget-object v0, p0, Lcom/google/android/filament/android/UiHelper$3;->val$holder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/filament/android/UiHelper;->access$100(Lcom/google/android/filament/android/UiHelper;Landroid/view/Surface;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 537
    iget-object p1, p0, Lcom/google/android/filament/android/UiHelper$3;->this$0:Lcom/google/android/filament/android/UiHelper;

    invoke-static {p1}, Lcom/google/android/filament/android/UiHelper;->access$200(Lcom/google/android/filament/android/UiHelper;)V

    return-void
.end method
