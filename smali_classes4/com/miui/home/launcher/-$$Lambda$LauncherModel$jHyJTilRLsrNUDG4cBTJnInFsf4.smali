.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$LauncherModel$jHyJTilRLsrNUDG4cBTJnInFsf4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/LauncherModel$Callbacks;

.field private final synthetic f$1:Ljava/util/ArrayList;

.field private final synthetic f$2:Ljava/util/ArrayList;

.field private final synthetic f$3:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$jHyJTilRLsrNUDG4cBTJnInFsf4;->f$0:Lcom/miui/home/launcher/LauncherModel$Callbacks;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$jHyJTilRLsrNUDG4cBTJnInFsf4;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$jHyJTilRLsrNUDG4cBTJnInFsf4;->f$2:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$jHyJTilRLsrNUDG4cBTJnInFsf4;->f$3:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$jHyJTilRLsrNUDG4cBTJnInFsf4;->f$0:Lcom/miui/home/launcher/LauncherModel$Callbacks;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$jHyJTilRLsrNUDG4cBTJnInFsf4;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$jHyJTilRLsrNUDG4cBTJnInFsf4;->f$2:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$jHyJTilRLsrNUDG4cBTJnInFsf4;->f$3:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, p0}, Lcom/miui/home/launcher/LauncherModel;->lambda$onReceiveBackground$1(Lcom/miui/home/launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method
