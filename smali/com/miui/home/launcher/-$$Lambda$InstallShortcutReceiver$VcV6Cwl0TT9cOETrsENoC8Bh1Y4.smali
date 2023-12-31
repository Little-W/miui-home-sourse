.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$InstallShortcutReceiver$VcV6Cwl0TT9cOETrsENoC8Bh1Y4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Landroid/content/Context;

.field private final synthetic f$2:Landroid/content/Intent;

.field private final synthetic f$3:Lcom/miui/launcher/common/PinItemRequestCompat;

.field private final synthetic f$4:I

.field private final synthetic f$5:Lcom/miui/home/launcher/InstallShortcutReceiver$InstallShortcutListener;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;Lcom/miui/launcher/common/PinItemRequestCompat;ILcom/miui/home/launcher/InstallShortcutReceiver$InstallShortcutListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$InstallShortcutReceiver$VcV6Cwl0TT9cOETrsENoC8Bh1Y4;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$InstallShortcutReceiver$VcV6Cwl0TT9cOETrsENoC8Bh1Y4;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/home/launcher/-$$Lambda$InstallShortcutReceiver$VcV6Cwl0TT9cOETrsENoC8Bh1Y4;->f$2:Landroid/content/Intent;

    iput-object p4, p0, Lcom/miui/home/launcher/-$$Lambda$InstallShortcutReceiver$VcV6Cwl0TT9cOETrsENoC8Bh1Y4;->f$3:Lcom/miui/launcher/common/PinItemRequestCompat;

    iput p5, p0, Lcom/miui/home/launcher/-$$Lambda$InstallShortcutReceiver$VcV6Cwl0TT9cOETrsENoC8Bh1Y4;->f$4:I

    iput-object p6, p0, Lcom/miui/home/launcher/-$$Lambda$InstallShortcutReceiver$VcV6Cwl0TT9cOETrsENoC8Bh1Y4;->f$5:Lcom/miui/home/launcher/InstallShortcutReceiver$InstallShortcutListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$InstallShortcutReceiver$VcV6Cwl0TT9cOETrsENoC8Bh1Y4;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$InstallShortcutReceiver$VcV6Cwl0TT9cOETrsENoC8Bh1Y4;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/home/launcher/-$$Lambda$InstallShortcutReceiver$VcV6Cwl0TT9cOETrsENoC8Bh1Y4;->f$2:Landroid/content/Intent;

    iget-object v3, p0, Lcom/miui/home/launcher/-$$Lambda$InstallShortcutReceiver$VcV6Cwl0TT9cOETrsENoC8Bh1Y4;->f$3:Lcom/miui/launcher/common/PinItemRequestCompat;

    iget v4, p0, Lcom/miui/home/launcher/-$$Lambda$InstallShortcutReceiver$VcV6Cwl0TT9cOETrsENoC8Bh1Y4;->f$4:I

    iget-object v5, p0, Lcom/miui/home/launcher/-$$Lambda$InstallShortcutReceiver$VcV6Cwl0TT9cOETrsENoC8Bh1Y4;->f$5:Lcom/miui/home/launcher/InstallShortcutReceiver$InstallShortcutListener;

    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/InstallShortcutReceiver;->lambda$checkToAddShortcut$0(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;Lcom/miui/launcher/common/PinItemRequestCompat;ILcom/miui/home/launcher/InstallShortcutReceiver$InstallShortcutListener;)V

    return-void
.end method
