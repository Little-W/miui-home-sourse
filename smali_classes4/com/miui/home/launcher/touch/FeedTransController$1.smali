.class Lcom/miui/home/launcher/touch/FeedTransController$1;
.super Landroid/util/Property;
.source "FeedTransController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/touch/FeedTransController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/miui/home/launcher/touch/FeedTransController;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/miui/home/launcher/touch/FeedTransController;)Ljava/lang/Float;
    .locals 0

    .line 48
    invoke-static {p1}, Lcom/miui/home/launcher/touch/FeedTransController;->access$000(Lcom/miui/home/launcher/touch/FeedTransController;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    check-cast p1, Lcom/miui/home/launcher/touch/FeedTransController;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/touch/FeedTransController$1;->get(Lcom/miui/home/launcher/touch/FeedTransController;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public set(Lcom/miui/home/launcher/touch/FeedTransController;Ljava/lang/Float;)V
    .locals 0

    .line 53
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/touch/FeedTransController;->setProgress(F)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 44
    check-cast p1, Lcom/miui/home/launcher/touch/FeedTransController;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/touch/FeedTransController$1;->set(Lcom/miui/home/launcher/touch/FeedTransController;Ljava/lang/Float;)V

    return-void
.end method
