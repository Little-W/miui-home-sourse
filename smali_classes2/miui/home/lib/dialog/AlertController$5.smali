.class Lmiui/home/lib/dialog/AlertController$5;
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

    .line 1064
    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController$5;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onApplyWindowInsets$0(Lmiui/home/lib/dialog/AlertController$5;Landroid/view/WindowInsets;)V
    .locals 1

    .line 1068
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$5;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-static {v0, p1}, Lmiui/home/lib/dialog/AlertController;->access$1800(Lmiui/home/lib/dialog/AlertController;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 1068
    new-instance v0, Lmiui/home/lib/dialog/-$$Lambda$AlertController$5$rv056sk26OS95Aib_G8pIvOb7bM;

    invoke-direct {v0, p0, p2}, Lmiui/home/lib/dialog/-$$Lambda$AlertController$5$rv056sk26OS95Aib_G8pIvOb7bM;-><init>(Lmiui/home/lib/dialog/AlertController$5;Landroid/view/WindowInsets;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1069
    sget-object p1, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p1
.end method
