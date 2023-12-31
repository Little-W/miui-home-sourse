.class public final synthetic Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$1$XSz7Z4LlAjNr3QOSit2oS1y7Ccs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/TouchInteractionService$1;

.field private final synthetic f$1:Landroid/os/Bundle;

.field private final synthetic f$2:Lcom/android/wm/shell/pip/IPip;

.field private final synthetic f$3:Lcom/android/wm/shell/onehanded/IOneHanded;

.field private final synthetic f$4:Lcom/android/wm/shell/splitscreen/ISplitScreenU;

.field private final synthetic f$5:Lcom/android/wm/shell/splitscreen/ISplitScreenT;

.field private final synthetic f$6:Lcom/android/wm/shell/recents/IRecentTasks;

.field private final synthetic f$7:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

.field private final synthetic f$8:Lcom/android/wm/shell/transition/IShellTransitions;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/TouchInteractionService$1;Landroid/os/Bundle;Lcom/android/wm/shell/pip/IPip;Lcom/android/wm/shell/onehanded/IOneHanded;Lcom/android/wm/shell/splitscreen/ISplitScreenU;Lcom/android/wm/shell/splitscreen/ISplitScreenT;Lcom/android/wm/shell/recents/IRecentTasks;Lcom/android/wm/shell/sosc/ISoScSplitScreen;Lcom/android/wm/shell/transition/IShellTransitions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$1$XSz7Z4LlAjNr3QOSit2oS1y7Ccs;->f$0:Lcom/miui/home/recents/TouchInteractionService$1;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$1$XSz7Z4LlAjNr3QOSit2oS1y7Ccs;->f$1:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$1$XSz7Z4LlAjNr3QOSit2oS1y7Ccs;->f$2:Lcom/android/wm/shell/pip/IPip;

    iput-object p4, p0, Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$1$XSz7Z4LlAjNr3QOSit2oS1y7Ccs;->f$3:Lcom/android/wm/shell/onehanded/IOneHanded;

    iput-object p5, p0, Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$1$XSz7Z4LlAjNr3QOSit2oS1y7Ccs;->f$4:Lcom/android/wm/shell/splitscreen/ISplitScreenU;

    iput-object p6, p0, Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$1$XSz7Z4LlAjNr3QOSit2oS1y7Ccs;->f$5:Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    iput-object p7, p0, Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$1$XSz7Z4LlAjNr3QOSit2oS1y7Ccs;->f$6:Lcom/android/wm/shell/recents/IRecentTasks;

    iput-object p8, p0, Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$1$XSz7Z4LlAjNr3QOSit2oS1y7Ccs;->f$7:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    iput-object p9, p0, Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$1$XSz7Z4LlAjNr3QOSit2oS1y7Ccs;->f$8:Lcom/android/wm/shell/transition/IShellTransitions;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$1$XSz7Z4LlAjNr3QOSit2oS1y7Ccs;->f$0:Lcom/miui/home/recents/TouchInteractionService$1;

    iget-object v1, p0, Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$1$XSz7Z4LlAjNr3QOSit2oS1y7Ccs;->f$1:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$1$XSz7Z4LlAjNr3QOSit2oS1y7Ccs;->f$2:Lcom/android/wm/shell/pip/IPip;

    iget-object v3, p0, Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$1$XSz7Z4LlAjNr3QOSit2oS1y7Ccs;->f$3:Lcom/android/wm/shell/onehanded/IOneHanded;

    iget-object v4, p0, Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$1$XSz7Z4LlAjNr3QOSit2oS1y7Ccs;->f$4:Lcom/android/wm/shell/splitscreen/ISplitScreenU;

    iget-object v5, p0, Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$1$XSz7Z4LlAjNr3QOSit2oS1y7Ccs;->f$5:Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    iget-object v6, p0, Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$1$XSz7Z4LlAjNr3QOSit2oS1y7Ccs;->f$6:Lcom/android/wm/shell/recents/IRecentTasks;

    iget-object v7, p0, Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$1$XSz7Z4LlAjNr3QOSit2oS1y7Ccs;->f$7:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    iget-object v8, p0, Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$1$XSz7Z4LlAjNr3QOSit2oS1y7Ccs;->f$8:Lcom/android/wm/shell/transition/IShellTransitions;

    invoke-virtual/range {v0 .. v8}, Lcom/miui/home/recents/TouchInteractionService$1;->lambda$onInitialize$0$TouchInteractionService$1(Landroid/os/Bundle;Lcom/android/wm/shell/pip/IPip;Lcom/android/wm/shell/onehanded/IOneHanded;Lcom/android/wm/shell/splitscreen/ISplitScreenU;Lcom/android/wm/shell/splitscreen/ISplitScreenT;Lcom/android/wm/shell/recents/IRecentTasks;Lcom/android/wm/shell/sosc/ISoScSplitScreen;Lcom/android/wm/shell/transition/IShellTransitions;)V

    return-void
.end method
