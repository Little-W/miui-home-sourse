.class public final synthetic Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$2$nFt8CKn3CGPWXXeuzx7YLihFdMg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;

.field private final synthetic f$1:Lcom/miui/home/launcher/ShortcutIcon;

.field private final synthetic f$2:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;Lcom/miui/home/launcher/ShortcutIcon;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$2$nFt8CKn3CGPWXXeuzx7YLihFdMg;->f$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$2$nFt8CKn3CGPWXXeuzx7YLihFdMg;->f$1:Lcom/miui/home/launcher/ShortcutIcon;

    iput-object p3, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$2$nFt8CKn3CGPWXXeuzx7YLihFdMg;->f$2:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$2$nFt8CKn3CGPWXXeuzx7YLihFdMg;->f$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;

    iget-object v1, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$2$nFt8CKn3CGPWXXeuzx7YLihFdMg;->f$1:Lcom/miui/home/launcher/ShortcutIcon;

    iget-object v2, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$2$nFt8CKn3CGPWXXeuzx7YLihFdMg;->f$2:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, v1, v2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->lambda$onAnimationEnd$1(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;Lcom/miui/home/launcher/ShortcutIcon;Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method
