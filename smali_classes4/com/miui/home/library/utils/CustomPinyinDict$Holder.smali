.class Lcom/miui/home/library/utils/CustomPinyinDict$Holder;
.super Ljava/lang/Object;
.source "CustomPinyinDict.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/library/utils/CustomPinyinDict;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static sInstance:Lcom/miui/home/library/utils/CustomPinyinDict;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 76
    new-instance v0, Lcom/miui/home/library/utils/CustomPinyinDict;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/library/utils/CustomPinyinDict;-><init>(Lcom/miui/home/library/utils/CustomPinyinDict$1;)V

    sput-object v0, Lcom/miui/home/library/utils/CustomPinyinDict$Holder;->sInstance:Lcom/miui/home/library/utils/CustomPinyinDict;

    return-void
.end method

.method static synthetic access$100()Lcom/miui/home/library/utils/CustomPinyinDict;
    .locals 1

    .line 75
    sget-object v0, Lcom/miui/home/library/utils/CustomPinyinDict$Holder;->sInstance:Lcom/miui/home/library/utils/CustomPinyinDict;

    return-object v0
.end method
