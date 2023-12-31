.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$InstallShortcutBroadcastUtils$nZ0z8A54_-RCCSFQB3ch_8h32tg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Landroid/content/Intent;

.field private final synthetic f$2:Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

.field private final synthetic f$3:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/Intent;Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$InstallShortcutBroadcastUtils$nZ0z8A54_-RCCSFQB3ch_8h32tg;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$InstallShortcutBroadcastUtils$nZ0z8A54_-RCCSFQB3ch_8h32tg;->f$1:Landroid/content/Intent;

    iput-object p3, p0, Lcom/miui/home/launcher/-$$Lambda$InstallShortcutBroadcastUtils$nZ0z8A54_-RCCSFQB3ch_8h32tg;->f$2:Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

    iput-object p4, p0, Lcom/miui/home/launcher/-$$Lambda$InstallShortcutBroadcastUtils$nZ0z8A54_-RCCSFQB3ch_8h32tg;->f$3:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$InstallShortcutBroadcastUtils$nZ0z8A54_-RCCSFQB3ch_8h32tg;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$InstallShortcutBroadcastUtils$nZ0z8A54_-RCCSFQB3ch_8h32tg;->f$1:Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/home/launcher/-$$Lambda$InstallShortcutBroadcastUtils$nZ0z8A54_-RCCSFQB3ch_8h32tg;->f$2:Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$InstallShortcutBroadcastUtils$nZ0z8A54_-RCCSFQB3ch_8h32tg;->f$3:Landroid/content/Context;

    invoke-static {v0, v1, v2, p0}, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils;->lambda$sendBroadcastToSenderAppAsync$0(Ljava/lang/String;Landroid/content/Intent;Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;Landroid/content/Context;)V

    return-void
.end method
