.class public final synthetic Lcom/miui/home/launcher/model/-$$Lambda$BaseModelUpdateTask$oMhNt2u8rUe2Am9wiFk92E4FOzc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/model/BaseModelUpdateTask;

.field private final synthetic f$1:Lcom/miui/home/launcher/LauncherModel$Callbacks;

.field private final synthetic f$2:Lcom/miui/home/launcher/LauncherModel$CallbackTask;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/model/BaseModelUpdateTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;Lcom/miui/home/launcher/LauncherModel$CallbackTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/model/-$$Lambda$BaseModelUpdateTask$oMhNt2u8rUe2Am9wiFk92E4FOzc;->f$0:Lcom/miui/home/launcher/model/BaseModelUpdateTask;

    iput-object p2, p0, Lcom/miui/home/launcher/model/-$$Lambda$BaseModelUpdateTask$oMhNt2u8rUe2Am9wiFk92E4FOzc;->f$1:Lcom/miui/home/launcher/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/miui/home/launcher/model/-$$Lambda$BaseModelUpdateTask$oMhNt2u8rUe2Am9wiFk92E4FOzc;->f$2:Lcom/miui/home/launcher/LauncherModel$CallbackTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/model/-$$Lambda$BaseModelUpdateTask$oMhNt2u8rUe2Am9wiFk92E4FOzc;->f$0:Lcom/miui/home/launcher/model/BaseModelUpdateTask;

    iget-object v1, p0, Lcom/miui/home/launcher/model/-$$Lambda$BaseModelUpdateTask$oMhNt2u8rUe2Am9wiFk92E4FOzc;->f$1:Lcom/miui/home/launcher/LauncherModel$Callbacks;

    iget-object p0, p0, Lcom/miui/home/launcher/model/-$$Lambda$BaseModelUpdateTask$oMhNt2u8rUe2Am9wiFk92E4FOzc;->f$2:Lcom/miui/home/launcher/LauncherModel$CallbackTask;

    invoke-virtual {v0, v1, p0}, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->lambda$scheduleCallbackTask$0$BaseModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$Callbacks;Lcom/miui/home/launcher/LauncherModel$CallbackTask;)V

    return-void
.end method
