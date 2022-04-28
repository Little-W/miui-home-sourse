.class Lcom/miui/maml/elements/ListScreenElement$ListItemElement;
.super Lcom/miui/maml/elements/ElementGroup;
.source "ListScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/ListScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListItemElement"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Item"


# instance fields
.field private mDataIndex:I

.field private mDivider:Lcom/miui/maml/elements/AnimatedScreenElement;

.field protected mNode:Lorg/w3c/dom/Element;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    const/4 p2, -0x1

    .line 114
    iput p2, p0, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->mDataIndex:I

    .line 133
    iput-object p1, p0, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->mNode:Lorg/w3c/dom/Element;

    const-string p1, "divider"

    .line 134
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object p1

    .line 135
    instance-of p2, p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    if-eqz p2, :cond_0

    .line 136
    move-object p2, p1

    check-cast p2, Lcom/miui/maml/elements/AnimatedScreenElement;

    iput-object p2, p0, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->mDivider:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 137
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->removeElement(Lcom/miui/maml/elements/ScreenElement;)V

    .line 138
    iget-object p1, p0, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->mDivider:Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->addElement(Lcom/miui/maml/elements/ScreenElement;)V

    .line 141
    :cond_0
    sget-object p1, Lcom/miui/maml/elements/ScreenElement$AlignV;->TOP:Lcom/miui/maml/elements/ScreenElement$AlignV;

    iput-object p1, p0, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->mAlignV:Lcom/miui/maml/elements/ScreenElement$AlignV;

    return-void
.end method


# virtual methods
.method public getDataIndex()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->mDataIndex:I

    return v0
.end method

.method public setDataIndex(I)V
    .locals 1

    .line 121
    iput p1, p0, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->mDataIndex:I

    .line 122
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->mDivider:Lcom/miui/maml/elements/AnimatedScreenElement;

    if-eqz v0, :cond_1

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    .line 124
    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->show(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 126
    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->show(Z)V

    :cond_1
    :goto_0
    return-void
.end method
