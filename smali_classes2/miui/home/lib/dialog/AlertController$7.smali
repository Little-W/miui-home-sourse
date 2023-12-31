.class Lmiui/home/lib/dialog/AlertController$7;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/home/lib/dialog/AlertController;->setupWindowInsetsAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/home/lib/dialog/AlertController;


# direct methods
.method constructor <init>(Lmiui/home/lib/dialog/AlertController;)V
    .locals 0

    .line 1253
    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController$7;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onApplyWindowInsets$0$AlertController$7(Landroid/view/WindowInsets;)V
    .locals 0

    .line 1259
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController$7;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-static {p0, p1}, Lmiui/home/lib/dialog/AlertController;->access$2200(Lmiui/home/lib/dialog/AlertController;Landroid/view/WindowInsets;)V

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    .line 1257
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$7;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-static {v0}, Lmiui/home/lib/dialog/AlertController;->access$1600(Lmiui/home/lib/dialog/AlertController;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController$7;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-static {v2}, Lmiui/home/lib/dialog/AlertController;->access$000(Lmiui/home/lib/dialog/AlertController;)Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lmiui/home/lib/dialog/AlertController;->access$1502(Lmiui/home/lib/dialog/AlertController;I)I

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1259
    new-instance v0, Lmiui/home/lib/dialog/-$$Lambda$AlertController$7$LGsHk_XMVy3OGmHtXzj7CfgO0_U;

    invoke-direct {v0, p0, p2}, Lmiui/home/lib/dialog/-$$Lambda$AlertController$7$LGsHk_XMVy3OGmHtXzj7CfgO0_U;-><init>(Lmiui/home/lib/dialog/AlertController$7;Landroid/view/WindowInsets;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1261
    :cond_0
    sget-object p0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p0
.end method
