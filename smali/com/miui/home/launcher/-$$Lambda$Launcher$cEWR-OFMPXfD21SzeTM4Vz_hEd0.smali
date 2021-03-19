.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$cEWR-OFMPXfD21SzeTM4Vz_hEd0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$cEWR-OFMPXfD21SzeTM4Vz_hEd0;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$cEWR-OFMPXfD21SzeTM4Vz_hEd0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$cEWR-OFMPXfD21SzeTM4Vz_hEd0;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$cEWR-OFMPXfD21SzeTM4Vz_hEd0;->f$1:Ljava/util/List;

    check-cast p1, Lcom/miui/home/launcher/AppInfo;

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/Launcher;->lambda$bindAppsRemoved$54(Lcom/miui/home/launcher/Launcher;Ljava/util/List;Lcom/miui/home/launcher/AppInfo;)V

    return-void
.end method
