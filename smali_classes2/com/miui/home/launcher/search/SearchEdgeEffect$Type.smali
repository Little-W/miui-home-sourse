.class abstract enum Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;
.super Ljava/lang/Enum;
.source "SearchEdgeEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/search/SearchEdgeEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

.field public static final enum FEED:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

.field public static final enum NULL:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

.field public static final enum SEARCH:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 334
    new-instance v0, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type$1;

    const/4 v1, 0x0

    const-string v2, "NULL"

    invoke-direct {v0, v2, v1}, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->NULL:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    .line 339
    new-instance v0, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type$2;

    const/4 v2, 0x1

    const-string v3, "SEARCH"

    invoke-direct {v0, v3, v2}, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->SEARCH:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    .line 344
    new-instance v0, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type$3;

    const/4 v3, 0x2

    const-string v4, "FEED"

    invoke-direct {v0, v4, v3}, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->FEED:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    .line 333
    sget-object v4, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->NULL:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    aput-object v4, v0, v1

    sget-object v1, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->SEARCH:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->FEED:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->$VALUES:[Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 333
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/miui/home/launcher/search/SearchEdgeEffect$1;)V
    .locals 0

    .line 333
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;
    .locals 1

    .line 333
    const-class v0, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    return-object p0
.end method

.method public static values()[Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;
    .locals 1

    .line 333
    sget-object v0, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->$VALUES:[Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    invoke-virtual {v0}, [Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    return-object v0
.end method


# virtual methods
.method public abstract createEdgeEffect(Landroid/content/Context;Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;II)Lcom/miui/home/launcher/search/SearchEdgeEffect;
.end method
