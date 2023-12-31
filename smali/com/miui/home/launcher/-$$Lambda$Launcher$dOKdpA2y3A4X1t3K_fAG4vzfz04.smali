.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$dOKdpA2y3A4X1t3K_fAG4vzfz04;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:I

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$dOKdpA2y3A4X1t3K_fAG4vzfz04;->f$0:Lcom/miui/home/launcher/Launcher;

    iput p2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$dOKdpA2y3A4X1t3K_fAG4vzfz04;->f$1:I

    iput-object p3, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$dOKdpA2y3A4X1t3K_fAG4vzfz04;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$dOKdpA2y3A4X1t3K_fAG4vzfz04;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$dOKdpA2y3A4X1t3K_fAG4vzfz04;->f$0:Lcom/miui/home/launcher/Launcher;

    iget v1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$dOKdpA2y3A4X1t3K_fAG4vzfz04;->f$1:I

    iget-object v2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$dOKdpA2y3A4X1t3K_fAG4vzfz04;->f$2:Ljava/lang/String;

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$dOKdpA2y3A4X1t3K_fAG4vzfz04;->f$3:Ljava/lang/String;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/miui/home/launcher/Launcher;->lambda$removeDeepShortcut$59$Launcher(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method
