.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$peEge29-fNgCVTzEf66TpmXCmbE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:Landroid/content/IntentSender;

.field private final synthetic f$2:Landroid/content/Intent;

.field private final synthetic f$3:I

.field private final synthetic f$4:I

.field private final synthetic f$5:I

.field private final synthetic f$6:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$peEge29-fNgCVTzEf66TpmXCmbE;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$peEge29-fNgCVTzEf66TpmXCmbE;->f$1:Landroid/content/IntentSender;

    iput-object p3, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$peEge29-fNgCVTzEf66TpmXCmbE;->f$2:Landroid/content/Intent;

    iput p4, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$peEge29-fNgCVTzEf66TpmXCmbE;->f$3:I

    iput p5, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$peEge29-fNgCVTzEf66TpmXCmbE;->f$4:I

    iput p6, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$peEge29-fNgCVTzEf66TpmXCmbE;->f$5:I

    iput-object p7, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$peEge29-fNgCVTzEf66TpmXCmbE;->f$6:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 7

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$peEge29-fNgCVTzEf66TpmXCmbE;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$peEge29-fNgCVTzEf66TpmXCmbE;->f$1:Landroid/content/IntentSender;

    iget-object v2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$peEge29-fNgCVTzEf66TpmXCmbE;->f$2:Landroid/content/Intent;

    iget v3, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$peEge29-fNgCVTzEf66TpmXCmbE;->f$3:I

    iget v4, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$peEge29-fNgCVTzEf66TpmXCmbE;->f$4:I

    iget v5, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$peEge29-fNgCVTzEf66TpmXCmbE;->f$5:I

    iget-object v6, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$peEge29-fNgCVTzEf66TpmXCmbE;->f$6:Landroid/os/Bundle;

    invoke-virtual/range {v0 .. v6}, Lcom/miui/home/launcher/Launcher;->lambda$startIntentSender$79$Launcher(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method
