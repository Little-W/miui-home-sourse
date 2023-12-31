.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$ROz10P68zkcWjpQ0r1vFJ2uXc0E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$ROz10P68zkcWjpQ0r1vFJ2uXc0E;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$ROz10P68zkcWjpQ0r1vFJ2uXc0E;->f$1:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$ROz10P68zkcWjpQ0r1vFJ2uXc0E;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$ROz10P68zkcWjpQ0r1vFJ2uXc0E;->f$1:Ljava/util/HashSet;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/Launcher;->lambda$addNewInstallIndicator$41$Launcher(Ljava/util/HashSet;Ljava/util/Map;)V

    return-void
.end method
