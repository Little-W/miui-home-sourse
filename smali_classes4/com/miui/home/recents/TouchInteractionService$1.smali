.class Lcom/miui/home/recents/TouchInteractionService$1;
.super Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;
.source "TouchInteractionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/TouchInteractionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/TouchInteractionService;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/TouchInteractionService;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/miui/home/recents/TouchInteractionService$1;->this$0:Lcom/miui/home/recents/TouchInteractionService;

    invoke-direct {p0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onSystemUiStateChanged$1(Lcom/miui/home/recents/TouchInteractionService;)V
    .locals 0

    .line 203
    invoke-static {p0}, Lcom/miui/home/recents/TouchInteractionService;->access$200(Lcom/miui/home/recents/TouchInteractionService;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onInitialize$0$TouchInteractionService$1(Landroid/os/Bundle;Lcom/android/wm/shell/pip/IPip;Lcom/android/wm/shell/onehanded/IOneHanded;Lcom/android/wm/shell/splitscreen/ISplitScreenU;Lcom/android/wm/shell/splitscreen/ISplitScreenT;Lcom/android/wm/shell/recents/IRecentTasks;Lcom/android/wm/shell/sosc/ISoScSplitScreen;Lcom/android/wm/shell/transition/IShellTransitions;)V
    .locals 11

    move-object v0, p0

    .line 155
    sget-object v1, Lcom/miui/home/recents/SystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/util/MainThreadInitializedObject;

    move-object v3, p1

    invoke-virtual {v1, p1}, Lcom/miui/home/recents/util/MainThreadInitializedObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/miui/home/recents/SystemUiProxyWrapper;

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Lcom/miui/home/recents/SystemUiProxyWrapper;->setProxyByBundle(Landroid/os/Bundle;Lcom/android/wm/shell/pip/IPip;Lcom/android/wm/shell/onehanded/IOneHanded;Lcom/android/wm/shell/splitscreen/ISplitScreenU;Lcom/android/wm/shell/splitscreen/ISplitScreenT;Lcom/android/wm/shell/recents/IRecentTasks;Lcom/android/wm/shell/sosc/ISoScSplitScreen;Lcom/android/wm/shell/transition/IShellTransitions;)V

    .line 156
    iget-object v1, v0, Lcom/miui/home/recents/TouchInteractionService$1;->this$0:Lcom/miui/home/recents/TouchInteractionService;

    invoke-virtual {v1}, Lcom/miui/home/recents/TouchInteractionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/recents/LauncherAppTransitionManager;->newInstance(Landroid/content/Context;)Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/LauncherAppTransitionManager;->registerRemoteTransitions()V

    .line 157
    iget-object v0, v0, Lcom/miui/home/recents/TouchInteractionService$1;->this$0:Lcom/miui/home/recents/TouchInteractionService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/recents/TouchInteractionService;->access$300(Lcom/miui/home/recents/TouchInteractionService;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onActiveNavBarRegionChanges(Landroid/graphics/Region;)V
    .locals 0

    return-void
.end method

.method public onAssistantAvailable(Z)V
    .locals 0

    return-void
.end method

.method public onAssistantVisibilityChanged(F)V
    .locals 0

    return-void
.end method

.method public onBackAction(ZIIZZ)V
    .locals 0

    return-void
.end method

.method public onFocusNotifClicked()V
    .locals 1

    .line 218
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object p0

    check-cast p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->onFocusNotifyStartActivity()V

    :cond_0
    return-void
.end method

.method public onFocusNotifyAnimFinish()V
    .locals 0

    .line 208
    sget-object p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->INSTANCE:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;

    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->onFocusNotifyAnimFinish()V

    return-void
.end method

.method public onFocusedNotifUpdate(Ljava/lang/String;Landroid/graphics/drawable/Icon;Landroid/graphics/Rect;)V
    .locals 0

    .line 213
    sget-object p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->INSTANCE:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->onFocusedNotifUpdate(Ljava/lang/String;Landroid/graphics/drawable/Icon;Landroid/graphics/Rect;)V

    return-void
.end method

.method public onInitialize(Landroid/os/Bundle;)V
    .locals 12

    const-string v0, "TouchInteractionService"

    const-string v1, "TouchInteractionService::onInitialize"

    .line 146
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "extra_shell_pip"

    .line 147
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/pip/IPip$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/pip/IPip;

    move-result-object v4

    const-string v0, "extra_shell_one_handed"

    .line 148
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/onehanded/IOneHanded$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/onehanded/IOneHanded;

    move-result-object v5

    const-string v0, "extra_shell_split_screen"

    .line 149
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/splitscreen/ISplitScreenU;

    move-result-object v6

    .line 150
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object v7

    .line 151
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->KEY_EXTRA_SHELL_RECENT_TASKS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/recents/IRecentTasks$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/recents/IRecentTasks;

    move-result-object v8

    const-string v0, "extra_shell_sosc_split_screen"

    .line 152
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    move-result-object v9

    const-string v0, "extra_shell_shell_transitions"

    .line 153
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/transition/IShellTransitions$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/transition/IShellTransitions;

    move-result-object v10

    .line 154
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v11, Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$1$XSz7Z4LlAjNr3QOSit2oS1y7Ccs;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v10}, Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$1$XSz7Z4LlAjNr3QOSit2oS1y7Ccs;-><init>(Lcom/miui/home/recents/TouchInteractionService$1;Landroid/os/Bundle;Lcom/android/wm/shell/pip/IPip;Lcom/android/wm/shell/onehanded/IOneHanded;Lcom/android/wm/shell/splitscreen/ISplitScreenU;Lcom/android/wm/shell/splitscreen/ISplitScreenT;Lcom/android/wm/shell/recents/IRecentTasks;Lcom/android/wm/shell/sosc/ISoScSplitScreen;Lcom/android/wm/shell/transition/IShellTransitions;)V

    invoke-virtual {v0, v11}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onOverviewHidden(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 175
    iget-object p0, p0, Lcom/miui/home/recents/TouchInteractionService$1;->this$0:Lcom/miui/home/recents/TouchInteractionService;

    invoke-static {p0}, Lcom/miui/home/recents/TouchInteractionService;->access$000(Lcom/miui/home/recents/TouchInteractionService;)Lcom/miui/home/recents/OverviewCommandHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/OverviewCommandHelper;->onOverviewHidden()V

    :cond_0
    return-void
.end method

.method public onOverviewShown(Z)V
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/miui/home/recents/TouchInteractionService$1;->this$0:Lcom/miui/home/recents/TouchInteractionService;

    invoke-static {p0}, Lcom/miui/home/recents/TouchInteractionService;->access$000(Lcom/miui/home/recents/TouchInteractionService;)Lcom/miui/home/recents/OverviewCommandHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/OverviewCommandHelper;->onOverviewShown(Z)V

    return-void
.end method

.method public onOverviewToggle()V
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/miui/home/recents/TouchInteractionService$1;->this$0:Lcom/miui/home/recents/TouchInteractionService;

    invoke-static {p0}, Lcom/miui/home/recents/TouchInteractionService;->access$000(Lcom/miui/home/recents/TouchInteractionService;)Lcom/miui/home/recents/OverviewCommandHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/OverviewCommandHelper;->onOverviewToggle()V

    return-void
.end method

.method public onStatusBarLaunchAnimFinish()V
    .locals 1

    .line 226
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object p0

    check-cast p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->onFocusNotifyStartActivityFinish()V

    :cond_0
    return-void
.end method

.method public onSystemUiStateChanged(I)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/miui/home/recents/TouchInteractionService$1;->this$0:Lcom/miui/home/recents/TouchInteractionService;

    invoke-static {v0, p1}, Lcom/miui/home/recents/TouchInteractionService;->access$102(Lcom/miui/home/recents/TouchInteractionService;I)I

    .line 203
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    iget-object p0, p0, Lcom/miui/home/recents/TouchInteractionService$1;->this$0:Lcom/miui/home/recents/TouchInteractionService;

    new-instance v0, Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$1$aNphzIKK3SmC9yX8HJkWq7lmVFg;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$1$aNphzIKK3SmC9yX8HJkWq7lmVFg;-><init>(Lcom/miui/home/recents/TouchInteractionService;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTip(II)V
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/miui/home/recents/TouchInteractionService$1;->this$0:Lcom/miui/home/recents/TouchInteractionService;

    invoke-static {p0}, Lcom/miui/home/recents/TouchInteractionService;->access$000(Lcom/miui/home/recents/TouchInteractionService;)Lcom/miui/home/recents/OverviewCommandHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/OverviewCommandHelper;->onTip(II)V

    return-void
.end method
