.class public Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;
.super Lcom/miui/maml/elements/ViewHolderScreenElement;
.source "PhysicallyBasedRenderingElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement$IPbrCreator;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Pbr"


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ViewHolderScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-void
.end method


# virtual methods
.method protected getView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public updateUniform(Ljava/lang/String;Ljava/lang/String;Z[Lcom/miui/maml/data/Expression;)V
    .locals 0

    return-void
.end method
