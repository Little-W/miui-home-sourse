.class Lcom/miui/home/launcher/LauncherMenu$4;
.super Ljava/lang/Object;
.source "LauncherMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LauncherMenu;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/LauncherMenu;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LauncherMenu;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherMenu$4;->this$0:Lcom/miui/home/launcher/LauncherMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 97
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherMenu$4;->this$0:Lcom/miui/home/launcher/LauncherMenu;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherMenu;->access$200(Lcom/miui/home/launcher/LauncherMenu;)Lmiui/widget/SlidingButton;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu$4;->this$0:Lcom/miui/home/launcher/LauncherMenu;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherMenu;->access$200(Lcom/miui/home/launcher/LauncherMenu;)Lmiui/widget/SlidingButton;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    return-void
.end method
