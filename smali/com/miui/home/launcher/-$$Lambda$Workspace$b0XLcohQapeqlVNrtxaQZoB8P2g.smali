.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Workspace$b0XLcohQapeqlVNrtxaQZoB8P2g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Workspace;

.field private final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Workspace;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Workspace$b0XLcohQapeqlVNrtxaQZoB8P2g;->f$0:Lcom/miui/home/launcher/Workspace;

    iput-wide p2, p0, Lcom/miui/home/launcher/-$$Lambda$Workspace$b0XLcohQapeqlVNrtxaQZoB8P2g;->f$1:J

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Workspace$b0XLcohQapeqlVNrtxaQZoB8P2g;->f$0:Lcom/miui/home/launcher/Workspace;

    iget-wide v1, p0, Lcom/miui/home/launcher/-$$Lambda$Workspace$b0XLcohQapeqlVNrtxaQZoB8P2g;->f$1:J

    check-cast p1, Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {v0, v1, v2, p1}, Lcom/miui/home/launcher/Workspace;->lambda$isScreenHasClockWidget$1$Workspace(JLcom/miui/home/launcher/ItemInfo;)Z

    move-result p0

    return p0
.end method
