.class Lmiui/home/lib/dialog/widget/DialogRootView$1;
.super Ljava/lang/Object;
.source "DialogRootView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/home/lib/dialog/widget/DialogRootView;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/home/lib/dialog/widget/DialogRootView;

.field final synthetic val$bottom:I

.field final synthetic val$hDp:I

.field final synthetic val$left:I

.field final synthetic val$right:I

.field final synthetic val$top:I

.field final synthetic val$wDp:I


# direct methods
.method constructor <init>(Lmiui/home/lib/dialog/widget/DialogRootView;IIIIII)V
    .locals 0

    .line 48
    iput-object p1, p0, Lmiui/home/lib/dialog/widget/DialogRootView$1;->this$0:Lmiui/home/lib/dialog/widget/DialogRootView;

    iput p2, p0, Lmiui/home/lib/dialog/widget/DialogRootView$1;->val$wDp:I

    iput p3, p0, Lmiui/home/lib/dialog/widget/DialogRootView$1;->val$hDp:I

    iput p4, p0, Lmiui/home/lib/dialog/widget/DialogRootView$1;->val$left:I

    iput p5, p0, Lmiui/home/lib/dialog/widget/DialogRootView$1;->val$top:I

    iput p6, p0, Lmiui/home/lib/dialog/widget/DialogRootView$1;->val$right:I

    iput p7, p0, Lmiui/home/lib/dialog/widget/DialogRootView$1;->val$bottom:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 51
    iget-object v0, p0, Lmiui/home/lib/dialog/widget/DialogRootView$1;->this$0:Lmiui/home/lib/dialog/widget/DialogRootView;

    invoke-virtual {v0}, Lmiui/home/lib/dialog/widget/DialogRootView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 52
    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p0, Lmiui/home/lib/dialog/widget/DialogRootView$1;->val$wDp:I

    if-ne v1, v2, :cond_0

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v1, p0, Lmiui/home/lib/dialog/widget/DialogRootView$1;->val$hDp:I

    if-eq v0, v1, :cond_1

    .line 53
    :cond_0
    iget-object v0, p0, Lmiui/home/lib/dialog/widget/DialogRootView$1;->this$0:Lmiui/home/lib/dialog/widget/DialogRootView;

    invoke-static {v0}, Lmiui/home/lib/dialog/widget/DialogRootView;->access$000(Lmiui/home/lib/dialog/widget/DialogRootView;)Lmiui/home/lib/dialog/widget/DialogRootView$ConfigurationChangedCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lmiui/home/lib/dialog/widget/DialogRootView$1;->this$0:Lmiui/home/lib/dialog/widget/DialogRootView;

    invoke-static {v0}, Lmiui/home/lib/dialog/widget/DialogRootView;->access$000(Lmiui/home/lib/dialog/widget/DialogRootView;)Lmiui/home/lib/dialog/widget/DialogRootView$ConfigurationChangedCallback;

    move-result-object v1

    iget-object v0, p0, Lmiui/home/lib/dialog/widget/DialogRootView$1;->this$0:Lmiui/home/lib/dialog/widget/DialogRootView;

    invoke-virtual {v0}, Lmiui/home/lib/dialog/widget/DialogRootView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v3, p0, Lmiui/home/lib/dialog/widget/DialogRootView$1;->val$left:I

    iget v4, p0, Lmiui/home/lib/dialog/widget/DialogRootView$1;->val$top:I

    iget v5, p0, Lmiui/home/lib/dialog/widget/DialogRootView$1;->val$right:I

    iget v6, p0, Lmiui/home/lib/dialog/widget/DialogRootView$1;->val$bottom:I

    invoke-interface/range {v1 .. v6}, Lmiui/home/lib/dialog/widget/DialogRootView$ConfigurationChangedCallback;->onConfigurationChanged(Landroid/content/res/Configuration;IIII)V

    :cond_1
    return-void
.end method
