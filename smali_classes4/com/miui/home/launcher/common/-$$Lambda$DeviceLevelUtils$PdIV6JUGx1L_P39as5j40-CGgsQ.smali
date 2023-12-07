.class public final synthetic Lcom/miui/home/launcher/common/-$$Lambda$DeviceLevelUtils$PdIV6JUGx1L_P39as5j40-CGgsQ;
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

    iput-object p1, p0, Lcom/miui/home/launcher/common/-$$Lambda$DeviceLevelUtils$PdIV6JUGx1L_P39as5j40-CGgsQ;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-wide p2, p0, Lcom/miui/home/launcher/common/-$$Lambda$DeviceLevelUtils$PdIV6JUGx1L_P39as5j40-CGgsQ;->f$1:J

    iput-boolean p4, p0, Lcom/miui/home/launcher/common/-$$Lambda$DeviceLevelUtils$PdIV6JUGx1L_P39as5j40-CGgsQ;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/common/-$$Lambda$DeviceLevelUtils$PdIV6JUGx1L_P39as5j40-CGgsQ;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-wide v1, p0, Lcom/miui/home/launcher/common/-$$Lambda$DeviceLevelUtils$PdIV6JUGx1L_P39as5j40-CGgsQ;->f$1:J

    iget-boolean p0, p0, Lcom/miui/home/launcher/common/-$$Lambda$DeviceLevelUtils$PdIV6JUGx1L_P39as5j40-CGgsQ;->f$2:Z

    invoke-static {v0, v1, v2, p0}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->lambda$showStatusBar$0(Lcom/miui/home/launcher/Launcher;JZ)V

    return-void
.end method
