.class Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$4;
.super Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;
.source "MultiSelectMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$4$_lancet;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$4;->this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    invoke-direct {p0}, Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/EditModeChangedMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$4;->this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/EditModeChangedMessage;->getCurrentEditState()I

    move-result p1

    invoke-static {v0, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->access$802(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;I)I

    const-string p1, "Launcher.MultiSelectMonitor"

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EditStateChangedMessageHandler, state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$4;->this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    invoke-static {v1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->access$800(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$4$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$4;->this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    invoke-static {p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->access$800(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)I

    move-result p1

    const/4 v0, 0x7

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$4;->this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    .line 276
    invoke-static {p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->access$800(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 277
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$4;->this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    invoke-static {p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->access$700(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)V

    .line 278
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$4;->this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    invoke-virtual {p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->clearAllCheckedItems()V

    .line 281
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$4;->this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    invoke-static {p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->access$800(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 282
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$4;->this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    invoke-static {p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->access$900(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)V

    goto :goto_0

    .line 283
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$4;->this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    invoke-static {p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->access$800(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)I

    move-result p1

    if-ne p1, v0, :cond_3

    .line 284
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$4;->this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    invoke-static {p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->access$1000(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)V

    :cond_3
    :goto_0
    return-void
.end method
