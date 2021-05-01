.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$InstallShortcutReceiver$dBjPHmjPMfzY4nk2zpRVT9wtYzU;
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


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;Lcom/miui/launcher/common/PinItemRequestCompat;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$InstallShortcutReceiver$dBjPHmjPMfzY4nk2zpRVT9wtYzU;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$InstallShortcutReceiver$dBjPHmjPMfzY4nk2zpRVT9wtYzU;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/home/launcher/-$$Lambda$InstallShortcutReceiver$dBjPHmjPMfzY4nk2zpRVT9wtYzU;->f$2:Landroid/content/Intent;

    iput-object p4, p0, Lcom/miui/home/launcher/-$$Lambda$InstallShortcutReceiver$dBjPHmjPMfzY4nk2zpRVT9wtYzU;->f$3:Lcom/miui/launcher/common/PinItemRequestCompat;

    iput p5, p0, Lcom/miui/home/launcher/-$$Lambda$InstallShortcutReceiver$dBjPHmjPMfzY4nk2zpRVT9wtYzU;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$InstallShortcutReceiver$dBjPHmjPMfzY4nk2zpRVT9wtYzU;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$InstallShortcutReceiver$dBjPHmjPMfzY4nk2zpRVT9wtYzU;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/home/launcher/-$$Lambda$InstallShortcutReceiver$dBjPHmjPMfzY4nk2zpRVT9wtYzU;->f$2:Landroid/content/Intent;

    iget-object v3, p0, Lcom/miui/home/launcher/-$$Lambda$InstallShortcutReceiver$dBjPHmjPMfzY4nk2zpRVT9wtYzU;->f$3:Lcom/miui/launcher/common/PinItemRequestCompat;

    iget v4, p0, Lcom/miui/home/launcher/-$$Lambda$InstallShortcutReceiver$dBjPHmjPMfzY4nk2zpRVT9wtYzU;->f$4:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/home/launcher/InstallShortcutReceiver;->lambda$checkToAddShortcut$374(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;Lcom/miui/launcher/common/PinItemRequestCompat;I)V

    return-void
.end method
