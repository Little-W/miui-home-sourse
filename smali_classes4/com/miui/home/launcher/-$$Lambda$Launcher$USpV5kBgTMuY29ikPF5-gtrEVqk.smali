.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$USpV5kBgTMuY29ikPF5-gtrEVqk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$USpV5kBgTMuY29ikPF5-gtrEVqk;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$USpV5kBgTMuY29ikPF5-gtrEVqk;->f$0:Ljava/util/List;

    check-cast p1, Lcom/miui/home/launcher/AppInfo;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/Launcher;->lambda$updateIconWhenInstallForSomeContainer$72(Ljava/util/List;Lcom/miui/home/launcher/AppInfo;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
