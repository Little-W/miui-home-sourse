.class Lcom/google/android/filament/android/UiHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/filament/android/UiHelper;->attachTo(Landroid/view/SurfaceView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/filament/android/UiHelper;


# direct methods
.method constructor <init>(Lcom/google/android/filament/android/UiHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/filament/android/UiHelper$1;->this$0:Lcom/google/android/filament/android/UiHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/filament/android/UiHelper$1;->this$0:Lcom/google/android/filament/android/UiHelper;

    invoke-static {p0}, Lcom/google/android/filament/android/UiHelper;->access$000(Lcom/google/android/filament/android/UiHelper;)Lcom/google/android/filament/android/UiHelper$RendererCallback;

    move-result-object p0

    invoke-interface {p0, p3, p4}, Lcom/google/android/filament/android/UiHelper$RendererCallback;->onResized(II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/filament/android/UiHelper$1;->this$0:Lcom/google/android/filament/android/UiHelper;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/filament/android/UiHelper;->access$100(Lcom/google/android/filament/android/UiHelper;Landroid/view/Surface;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/filament/android/UiHelper$1;->this$0:Lcom/google/android/filament/android/UiHelper;

    invoke-static {p0}, Lcom/google/android/filament/android/UiHelper;->access$200(Lcom/google/android/filament/android/UiHelper;)V

    return-void
.end method
