.class public final synthetic Lcom/miui/home/launcher/common/-$$Lambda$BlurUtils$gB-mLlDD3j52nSGDTYZctQZVADY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/-$$Lambda$BlurUtils$gB-mLlDD3j52nSGDTYZctQZVADY;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-boolean p2, p0, Lcom/miui/home/launcher/common/-$$Lambda$BlurUtils$gB-mLlDD3j52nSGDTYZctQZVADY;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/common/-$$Lambda$BlurUtils$gB-mLlDD3j52nSGDTYZctQZVADY;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-boolean v1, p0, Lcom/miui/home/launcher/common/-$$Lambda$BlurUtils$gB-mLlDD3j52nSGDTYZctQZVADY;->f$1:Z

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/BlurUtils;->lambda$resetBlur$3(Lcom/miui/home/launcher/Launcher;Z)V

    return-void
.end method
