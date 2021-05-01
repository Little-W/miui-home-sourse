.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$MessageReceiver$NbKJNfdhcms6--94A39KnrzCsXM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;

.field private final synthetic f$1:Landroid/content/ComponentName;

.field private final synthetic f$2:Z

.field private final synthetic f$3:Landroid/content/Intent;

.field private final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;Landroid/content/ComponentName;ZLandroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$MessageReceiver$NbKJNfdhcms6--94A39KnrzCsXM;->f$0:Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$MessageReceiver$NbKJNfdhcms6--94A39KnrzCsXM;->f$1:Landroid/content/ComponentName;

    iput-boolean p3, p0, Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$MessageReceiver$NbKJNfdhcms6--94A39KnrzCsXM;->f$2:Z

    iput-object p4, p0, Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$MessageReceiver$NbKJNfdhcms6--94A39KnrzCsXM;->f$3:Landroid/content/Intent;

    iput p5, p0, Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$MessageReceiver$NbKJNfdhcms6--94A39KnrzCsXM;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$MessageReceiver$NbKJNfdhcms6--94A39KnrzCsXM;->f$0:Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$MessageReceiver$NbKJNfdhcms6--94A39KnrzCsXM;->f$1:Landroid/content/ComponentName;

    iget-boolean v2, p0, Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$MessageReceiver$NbKJNfdhcms6--94A39KnrzCsXM;->f$2:Z

    iget-object v3, p0, Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$MessageReceiver$NbKJNfdhcms6--94A39KnrzCsXM;->f$3:Landroid/content/Intent;

    iget v4, p0, Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$MessageReceiver$NbKJNfdhcms6--94A39KnrzCsXM;->f$4:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;->lambda$null$96(Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;Landroid/content/ComponentName;ZLandroid/content/Intent;I)V

    return-void
.end method
