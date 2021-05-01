.class public final synthetic Lcom/miui/home/launcher/common/-$$Lambda$DeviceLevelUtils$k-mR0JroOFAb0SM5EtoZSWlDmns;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:J

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/-$$Lambda$DeviceLevelUtils$k-mR0JroOFAb0SM5EtoZSWlDmns;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-wide p2, p0, Lcom/miui/home/launcher/common/-$$Lambda$DeviceLevelUtils$k-mR0JroOFAb0SM5EtoZSWlDmns;->f$1:J

    iput-boolean p4, p0, Lcom/miui/home/launcher/common/-$$Lambda$DeviceLevelUtils$k-mR0JroOFAb0SM5EtoZSWlDmns;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/launcher/common/-$$Lambda$DeviceLevelUtils$k-mR0JroOFAb0SM5EtoZSWlDmns;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-wide v1, p0, Lcom/miui/home/launcher/common/-$$Lambda$DeviceLevelUtils$k-mR0JroOFAb0SM5EtoZSWlDmns;->f$1:J

    iget-boolean v3, p0, Lcom/miui/home/launcher/common/-$$Lambda$DeviceLevelUtils$k-mR0JroOFAb0SM5EtoZSWlDmns;->f$2:Z

    invoke-static {v0, v1, v2, v3}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->lambda$showStatusBar$460(Lcom/miui/home/launcher/Launcher;JZ)V

    return-void
.end method
