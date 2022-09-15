.class Lcom/miui/home/launcher/Launcher$62;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->showUpsideEnterOrExitTipIfNeed(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$group:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 7037
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$62;->this$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$62;->val$group:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 7039
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$62;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$2400(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$62;->val$group:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragLayer;->removeView(Landroid/view/View;)V

    return-void
.end method
