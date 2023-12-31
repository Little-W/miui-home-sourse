.class Lmiui/home/lib/dialog/AlertController$4;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Lmiui/home/lib/dialog/widget/DialogRootView$ConfigurationChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/home/lib/dialog/AlertController;->installContent(Landroid/os/Bundle;)V
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

    .line 426
    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController$4;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;IIII)V
    .locals 0

    .line 429
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController$4;->this$0:Lmiui/home/lib/dialog/AlertController;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2}, Lmiui/home/lib/dialog/AlertController;->onConfigurationChanged(Landroid/content/res/Configuration;ZZ)V

    return-void
.end method
