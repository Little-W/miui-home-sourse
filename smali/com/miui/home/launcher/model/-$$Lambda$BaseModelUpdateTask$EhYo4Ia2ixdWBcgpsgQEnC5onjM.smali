.class public final synthetic Lcom/miui/home/launcher/model/-$$Lambda$BaseModelUpdateTask$EhYo4Ia2ixdWBcgpsgQEnC5onjM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/launcher/LauncherModel$CallbackTask;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/model/-$$Lambda$BaseModelUpdateTask$EhYo4Ia2ixdWBcgpsgQEnC5onjM;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/miui/home/launcher/model/-$$Lambda$BaseModelUpdateTask$EhYo4Ia2ixdWBcgpsgQEnC5onjM;->f$1:I

    return-void
.end method


# virtual methods
.method public final execute(Lcom/miui/home/launcher/LauncherModel$Callbacks;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/model/-$$Lambda$BaseModelUpdateTask$EhYo4Ia2ixdWBcgpsgQEnC5onjM;->f$0:Ljava/lang/String;

    iget v1, p0, Lcom/miui/home/launcher/model/-$$Lambda$BaseModelUpdateTask$EhYo4Ia2ixdWBcgpsgQEnC5onjM;->f$1:I

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->lambda$bindMamlWidgetUpdate$2(Ljava/lang/String;ILcom/miui/home/launcher/LauncherModel$Callbacks;)V

    return-void
.end method
