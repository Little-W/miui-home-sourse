.class public final Lcom/miui/home/launcher/overlay/assistant/AssistantPickerCallback;
.super Ljava/lang/Object;
.source "AssistantPickerCallback.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAssistantPickerCallback.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AssistantPickerCallback.kt\ncom/miui/home/launcher/overlay/assistant/AssistantPickerCallback\n*L\n1#1,86:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/home/launcher/overlay/assistant/AssistantPickerCallback;

.field private static isPickerInContinueAddState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/miui/home/launcher/overlay/assistant/AssistantPickerCallback;

    invoke-direct {v0}, Lcom/miui/home/launcher/overlay/assistant/AssistantPickerCallback;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/overlay/assistant/AssistantPickerCallback;->INSTANCE:Lcom/miui/home/launcher/overlay/assistant/AssistantPickerCallback;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$changeContinueAddState(Lcom/miui/home/launcher/overlay/assistant/AssistantPickerCallback;Z)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantPickerCallback;->changeContinueAddState(Z)V

    return-void
.end method

.method private final changeContinueAddState(Z)V
    .locals 1

    .line 67
    sget-boolean v0, Lcom/miui/home/launcher/overlay/assistant/AssistantPickerCallback;->isPickerInContinueAddState:Z

    if-eq p1, v0, :cond_1

    .line 68
    sput-boolean p1, Lcom/miui/home/launcher/overlay/assistant/AssistantPickerCallback;->isPickerInContinueAddState:Z

    if-eqz p1, :cond_0

    .line 70
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final exitPickerContinueAddState()V
    .locals 3

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/overlay/assistant/AssistantPickerCallback;->changeContinueAddState(Z)V

    .line 82
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "action_exit_picker_continue_add"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.miui.personalassistant"

    .line 83
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final deliverTouchEvent(Lcom/miui/home/launcher/Launcher;Landroid/view/MotionEvent;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 32
    :try_start_0
    new-instance v0, Lcom/miui/home/launcher/overlay/assistant/AssistantPickerCallback$deliverTouchEvent$$inlined$run$lambda$1;

    invoke-direct {v0, p1, p2}, Lcom/miui/home/launcher/overlay/assistant/AssistantPickerCallback$deliverTouchEvent$$inlined$run$lambda$1;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/view/MotionEvent;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    .line 39
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantPickerCallback;->changeContinueAddState(Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final onLauncherShowUninstallDialog(Lcom/miui/home/launcher/common/messages/LauncherShowUninstallDialogMessage;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantPickerCallback;->exitPickerContinueAddState()V

    return-void
.end method

.method public final onLauncherStateChange(Lcom/miui/home/launcher/common/messages/EditModeChangedMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/EditModeChangedMessage;->getCurrentEditState()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/EditModeChangedMessage;->getLastEditState()I

    move-result p1

    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantPickerCallback;->exitPickerContinueAddState()V

    :cond_0
    return-void
.end method
