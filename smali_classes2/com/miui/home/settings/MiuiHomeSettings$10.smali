.class Lcom/miui/home/settings/MiuiHomeSettings$10;
.super Ljava/lang/Object;
.source "MiuiHomeSettings.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/settings/MiuiHomeSettings;->setHomeScreenSearchBar(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/settings/MiuiHomeSettings;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isOpen:Z


# direct methods
.method constructor <init>(Lcom/miui/home/settings/MiuiHomeSettings;Landroid/content/Context;Z)V
    .locals 0

    .line 671
    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings$10;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    iput-object p2, p0, Lcom/miui/home/settings/MiuiHomeSettings$10;->val$context:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/miui/home/settings/MiuiHomeSettings$10;->val$isOpen:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 671
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings$10;->apply(Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 674
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings$10;->val$context:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/miui/home/settings/MiuiHomeSettings$10;->val$isOpen:Z

    invoke-static {p1, v0}, Lcom/miui/home/launcher/DeviceConfig;->setCurrentThemeSupportSearchBar(Landroid/content/Context;Z)Z

    .line 675
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings$10;->val$context:Landroid/content/Context;

    const-string v0, "home_search_desktop_setting"

    invoke-static {p1, v0}, Lcom/miui/home/launcher/DeviceConfig;->setSearchBarSource(Landroid/content/Context;Ljava/lang/String;)Z

    .line 676
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/common/messages/SearchBarChangeMessage;

    iget-boolean v1, p0, Lcom/miui/home/settings/MiuiHomeSettings$10;->val$isOpen:Z

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/common/messages/SearchBarChangeMessage;-><init>(Z)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method
