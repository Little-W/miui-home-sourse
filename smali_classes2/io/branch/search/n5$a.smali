.class public Lio/branch/search/n5$a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/branch/search/n5$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/n5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public a(III)Z
    .locals 0

    int-to-char p0, p2

    invoke-static {p0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p0

    return p0
.end method
