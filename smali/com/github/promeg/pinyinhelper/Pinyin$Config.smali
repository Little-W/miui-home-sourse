.class public final Lcom/github/promeg/pinyinhelper/Pinyin$Config;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/promeg/pinyinhelper/Pinyin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation


# instance fields
.field mPinyinDicts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/promeg/pinyinhelper/PinyinDict;",
            ">;"
        }
    .end annotation
.end field

.field mSelector:Lcom/github/promeg/pinyinhelper/SegmentationSelector;


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/promeg/pinyinhelper/PinyinDict;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->mPinyinDicts:Ljava/util/List;

    :cond_0
    new-instance p1, Lcom/github/promeg/pinyinhelper/ForwardLongestSelector;

    invoke-direct {p1}, Lcom/github/promeg/pinyinhelper/ForwardLongestSelector;-><init>()V

    iput-object p1, p0, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->mSelector:Lcom/github/promeg/pinyinhelper/SegmentationSelector;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/github/promeg/pinyinhelper/Pinyin$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/promeg/pinyinhelper/Pinyin$Config;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method getPinyinDicts()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/promeg/pinyinhelper/PinyinDict;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->mPinyinDicts:Ljava/util/List;

    return-object p0
.end method

.method getSelector()Lcom/github/promeg/pinyinhelper/SegmentationSelector;
    .locals 0

    iget-object p0, p0, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->mSelector:Lcom/github/promeg/pinyinhelper/SegmentationSelector;

    return-object p0
.end method

.method valid()Z
    .locals 1

    invoke-virtual {p0}, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->getPinyinDicts()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->getSelector()Lcom/github/promeg/pinyinhelper/SegmentationSelector;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public with(Lcom/github/promeg/pinyinhelper/PinyinDict;)Lcom/github/promeg/pinyinhelper/Pinyin$Config;
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->mPinyinDicts:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->mPinyinDicts:Ljava/util/List;

    iget-object v0, p0, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->mPinyinDicts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->mPinyinDicts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-object p0
.end method
