.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$E6RgArYjivjbW8VfNmCplABkHSo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:Ljava/util/List;

.field private final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$E6RgArYjivjbW8VfNmCplABkHSo;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$E6RgArYjivjbW8VfNmCplABkHSo;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$E6RgArYjivjbW8VfNmCplABkHSo;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$E6RgArYjivjbW8VfNmCplABkHSo;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$E6RgArYjivjbW8VfNmCplABkHSo;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$E6RgArYjivjbW8VfNmCplABkHSo;->f$2:Ljava/util/List;

    check-cast p1, Landroid/util/Pair;

    invoke-static {v0, v1, v2, p1}, Lcom/miui/home/launcher/Launcher;->lambda$updateIconWhenInstallForSomeContainer$68(Lcom/miui/home/launcher/Launcher;Ljava/util/List;Ljava/util/List;Landroid/util/Pair;)V

    return-void
.end method
