.class public final Lio/branch/search/u3$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/u3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/branch/search/u3$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)J
    .locals 2

    const-wide/16 v0, 0x1f4

    long-to-double v0, v0

    rsub-int/lit8 p0, p1, 0x3

    int-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    mul-double/2addr v0, p0

    double-to-long p0, v0

    return-wide p0
.end method
