.class Lcom/xiaomi/mirror/widget/ImmersionListPopupWindow$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mirror/widget/ImmersionListPopupWindow;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/mirror/widget/ImmersionListPopupWindow;


# direct methods
.method constructor <init>(Lcom/xiaomi/mirror/widget/ImmersionListPopupWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mirror/widget/ImmersionListPopupWindow$3;->this$0:Lcom/xiaomi/mirror/widget/ImmersionListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mirror/widget/ImmersionListPopupWindow$3;->this$0:Lcom/xiaomi/mirror/widget/ImmersionListPopupWindow;

    invoke-static {v0}, Lcom/xiaomi/mirror/widget/ImmersionListPopupWindow;->access$100(Lcom/xiaomi/mirror/widget/ImmersionListPopupWindow;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mirror/widget/ImmersionListPopupWindow$3;->this$0:Lcom/xiaomi/mirror/widget/ImmersionListPopupWindow;

    invoke-static {v0}, Lcom/xiaomi/mirror/widget/ImmersionListPopupWindow;->access$100(Lcom/xiaomi/mirror/widget/ImmersionListPopupWindow;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method
