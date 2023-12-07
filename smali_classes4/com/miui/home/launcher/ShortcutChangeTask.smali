.class public Lcom/miui/home/launcher/ShortcutChangeTask;
.super Ljava/lang/Object;
.source "ShortcutChangeTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mCallback:Lcom/miui/home/launcher/LauncherModel$Callbacks;

.field private final mInfoCompat:Lcom/miui/launcher/common/ShortcutInfoCompat;

.field private final mRemovedShortcut:Lcom/miui/home/launcher/ShortcutInfo;

.field private final mUpdatedShortcut:Lcom/miui/home/launcher/ShortcutInfo;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/launcher/common/ShortcutInfoCompat;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutChangeTask;->mUpdatedShortcut:Lcom/miui/home/launcher/ShortcutInfo;

    .line 19
    iput-object p2, p0, Lcom/miui/home/launcher/ShortcutChangeTask;->mRemovedShortcut:Lcom/miui/home/launcher/ShortcutInfo;

    .line 20
    iput-object p3, p0, Lcom/miui/home/launcher/ShortcutChangeTask;->mInfoCompat:Lcom/miui/launcher/common/ShortcutInfoCompat;

    .line 21
    iput-object p4, p0, Lcom/miui/home/launcher/ShortcutChangeTask;->mCallback:Lcom/miui/home/launcher/LauncherModel$Callbacks;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutChangeTask;->mCallback:Lcom/miui/home/launcher/LauncherModel$Callbacks;

    if-nez v0, :cond_0

    return-void

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutChangeTask;->mUpdatedShortcut:Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutChangeTask;->mInfoCompat:Lcom/miui/launcher/common/ShortcutInfoCompat;

    if-eqz v1, :cond_1

    .line 27
    invoke-interface {v0, v1}, Lcom/miui/home/launcher/LauncherModel$Callbacks;->updateDeepShortcut(Lcom/miui/launcher/common/ShortcutInfoCompat;)V

    goto :goto_0

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutChangeTask;->mRemovedShortcut:Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_2

    .line 29
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutChangeTask;->mCallback:Lcom/miui/home/launcher/LauncherModel$Callbacks;

    invoke-interface {p0, v0}, Lcom/miui/home/launcher/LauncherModel$Callbacks;->removeDeepShortcut(Lcom/miui/home/launcher/ShortcutInfo;)V

    :cond_2
    :goto_0
    return-void
.end method
