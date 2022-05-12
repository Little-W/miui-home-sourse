.class Lcom/miui/maml/data/ContentProviderBinder$Variable;
.super Lcom/miui/maml/data/VariableBinder$Variable;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Variable"
.end annotation


# static fields
.field public static final BLOB_BITMAP:I = 0x3e9


# instance fields
.field public mBlocked:Z

.field public mColumn:Ljava/lang/String;

.field private mImageVar:Lcom/miui/maml/elements/ImageScreenElement;

.field private mNoImageElement:Z

.field public mRow:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/data/Variables;)V
    .locals 0

    .line 157
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/data/VariableBinder$Variable;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/data/Variables;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V
    .locals 1

    .line 161
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/VariableBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V

    const-string p2, "column"

    .line 162
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    const-string p2, "row"

    const/4 v0, 0x0

    .line 163
    invoke-static {p1, p2, v0}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/maml/data/ContentProviderBinder$Variable;->mRow:I

    return-void
.end method


# virtual methods
.method public getImageElement(Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/elements/ImageScreenElement;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$Variable;->mImageVar:Lcom/miui/maml/elements/ImageScreenElement;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/maml/data/ContentProviderBinder$Variable;->mNoImageElement:Z

    if-nez v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$Variable;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/elements/ImageScreenElement;

    iput-object p1, p0, Lcom/miui/maml/data/ContentProviderBinder$Variable;->mImageVar:Lcom/miui/maml/elements/ImageScreenElement;

    .line 200
    iget-object p1, p0, Lcom/miui/maml/data/ContentProviderBinder$Variable;->mImageVar:Lcom/miui/maml/elements/ImageScreenElement;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/miui/maml/data/ContentProviderBinder$Variable;->mNoImageElement:Z

    .line 202
    :cond_1
    iget-object p1, p0, Lcom/miui/maml/data/ContentProviderBinder$Variable;->mImageVar:Lcom/miui/maml/elements/ImageScreenElement;

    return-object p1
.end method

.method protected parseType(Ljava/lang/String;)I
    .locals 2

    .line 179
    invoke-super {p0, p1}, Lcom/miui/maml/data/VariableBinder$Variable;->parseType(Ljava/lang/String;)I

    move-result p1

    const-string v0, "blob.bitmap"

    .line 181
    iget-object v1, p0, Lcom/miui/maml/data/ContentProviderBinder$Variable;->mTypeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x3e9

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 184
    iput-boolean v0, p0, Lcom/miui/maml/data/ContentProviderBinder$Variable;->mNoImageElement:Z

    :goto_0
    return p1
.end method

.method public setNull(Lcom/miui/maml/ScreenElementRoot;)V
    .locals 2

    .line 190
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/ContentProviderBinder$Variable;->getImageElement(Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/elements/ImageScreenElement;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/ContentProviderBinder$Variable;->getImageElement(Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/elements/ImageScreenElement;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/miui/maml/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {p0, v1}, Lcom/miui/maml/data/ContentProviderBinder$Variable;->set(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
