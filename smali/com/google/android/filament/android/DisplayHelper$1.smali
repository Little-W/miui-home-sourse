.class Lcom/google/android/filament/android/DisplayHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/filament/android/DisplayHelper;->attach(Lcom/google/android/filament/Renderer;Landroid/view/Display;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/filament/android/DisplayHelper;

.field final synthetic val$display:Landroid/view/Display;


# direct methods
.method constructor <init>(Lcom/google/android/filament/android/DisplayHelper;Landroid/view/Display;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/filament/android/DisplayHelper$1;->this$0:Lcom/google/android/filament/android/DisplayHelper;

    iput-object p2, p0, Lcom/google/android/filament/android/DisplayHelper$1;->val$display:Landroid/view/Display;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/filament/android/DisplayHelper$1;->val$display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/google/android/filament/android/DisplayHelper$1;->this$0:Lcom/google/android/filament/android/DisplayHelper;

    invoke-static {p0}, Lcom/google/android/filament/android/DisplayHelper;->access$000(Lcom/google/android/filament/android/DisplayHelper;)V

    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
