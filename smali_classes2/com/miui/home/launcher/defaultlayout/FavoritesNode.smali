.class public Lcom/miui/home/launcher/defaultlayout/FavoritesNode;
.super Lcom/miui/home/launcher/defaultlayout/Node;
.source "FavoritesNode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/miui/home/launcher/defaultlayout/Node;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/defaultlayout/FavoritesNode;->parseNext(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V

    return-void
.end method
