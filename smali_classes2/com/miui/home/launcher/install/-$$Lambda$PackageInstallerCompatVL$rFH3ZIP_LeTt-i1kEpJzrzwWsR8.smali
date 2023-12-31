.class public final synthetic Lcom/miui/home/launcher/install/-$$Lambda$PackageInstallerCompatVL$rFH3ZIP_LeTt-i1kEpJzrzwWsR8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/install/PackageInstallerCompatVL;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:I

.field private final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/install/PackageInstallerCompatVL;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/install/-$$Lambda$PackageInstallerCompatVL$rFH3ZIP_LeTt-i1kEpJzrzwWsR8;->f$0:Lcom/miui/home/launcher/install/PackageInstallerCompatVL;

    iput-object p2, p0, Lcom/miui/home/launcher/install/-$$Lambda$PackageInstallerCompatVL$rFH3ZIP_LeTt-i1kEpJzrzwWsR8;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/miui/home/launcher/install/-$$Lambda$PackageInstallerCompatVL$rFH3ZIP_LeTt-i1kEpJzrzwWsR8;->f$2:I

    iput-object p4, p0, Lcom/miui/home/launcher/install/-$$Lambda$PackageInstallerCompatVL$rFH3ZIP_LeTt-i1kEpJzrzwWsR8;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/install/-$$Lambda$PackageInstallerCompatVL$rFH3ZIP_LeTt-i1kEpJzrzwWsR8;->f$0:Lcom/miui/home/launcher/install/PackageInstallerCompatVL;

    iget-object v1, p0, Lcom/miui/home/launcher/install/-$$Lambda$PackageInstallerCompatVL$rFH3ZIP_LeTt-i1kEpJzrzwWsR8;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/miui/home/launcher/install/-$$Lambda$PackageInstallerCompatVL$rFH3ZIP_LeTt-i1kEpJzrzwWsR8;->f$2:I

    iget-object p0, p0, Lcom/miui/home/launcher/install/-$$Lambda$PackageInstallerCompatVL$rFH3ZIP_LeTt-i1kEpJzrzwWsR8;->f$3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/miui/home/launcher/install/PackageInstallerCompatVL;->lambda$sendUpdate$0$PackageInstallerCompatVL(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
