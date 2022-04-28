.class public Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;
.super Ljava/lang/Object;
.source "ContactsColorizedPortraitController.java"


# static fields
.field private static final PORTRAIT_DRAWABLE_RES_ID:[I


# instance fields
.field private mUnusedPortraitsNum:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    .line 15
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;->PORTRAIT_DRAWABLE_RES_ID:[I

    return-void

    :array_0
    .array-data 4
        0x7f0800f4
        0x7f0800f5
        0x7f0800f6
        0x7f0800f7
        0x7f0800f8
        0x7f0800f9
        0x7f0800fa
        0x7f0800fb
        0x7f0800fc
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;->mUnusedPortraitsNum:Ljava/util/List;

    const/4 v0, 0x0

    .line 28
    :goto_0
    sget-object v1, Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;->PORTRAIT_DRAWABLE_RES_ID:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 29
    iget-object v1, p0, Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;->mUnusedPortraitsNum:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getPortraitDrawableRes(I)I
    .locals 2

    .line 34
    sget-object v0, Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;->PORTRAIT_DRAWABLE_RES_ID:[I

    invoke-static {p0}, Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;->isPortraitNumValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    aget p0, v0, p0

    return p0
.end method

.method private static isPortraitNumValid(I)Z
    .locals 1

    if-ltz p0, :cond_0

    .line 55
    sget-object v0, Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;->PORTRAIT_DRAWABLE_RES_ID:[I

    array-length v0, v0

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public releasePortraitNum(I)V
    .locals 1

    .line 38
    invoke-static {p1}, Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;->isPortraitNumValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;->mUnusedPortraitsNum:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public requestOnePortraitNum()I
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;->mUnusedPortraitsNum:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;->mUnusedPortraitsNum:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public usePortraitNum(I)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;->mUnusedPortraitsNum:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
