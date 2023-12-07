.class public Lcom/miui/maml/util/StyleHelper;
.super Ljava/lang/Object;
.source "StyleHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/StylesManager$Style;)Ljava/lang/String;
    .locals 1

    .line 12
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 13
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 16
    invoke-virtual {p2, p1}, Lcom/miui/maml/StylesManager$Style;->getAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, ""

    :goto_0
    return-object p0
.end method
