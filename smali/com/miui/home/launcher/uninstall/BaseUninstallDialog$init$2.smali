.class final Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$init$2;
.super Ljava/lang/Object;
.source "BaseUninstallDialog.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->init(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$init$2;->this$0:Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 62
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$init$2;->this$0:Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 63
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$init$2;->this$0:Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
