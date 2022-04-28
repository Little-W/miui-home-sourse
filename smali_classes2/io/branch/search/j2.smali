.class public final enum Lio/branch/search/j2;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/j2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/branch/search/j2;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/j2$a;

.field public static final enum a:Lio/branch/search/j2;

.field public static final enum b:Lio/branch/search/j2;

.field public static final synthetic c:[Lio/branch/search/j2;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lio/branch/search/j2;

    new-instance v1, Lio/branch/search/j2;

    const-string v2, "SETUP"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lio/branch/search/j2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/branch/search/j2;->a:Lio/branch/search/j2;

    aput-object v1, v0, v3

    new-instance v1, Lio/branch/search/j2;

    const-string v2, "TEARDOWN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lio/branch/search/j2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/branch/search/j2;->b:Lio/branch/search/j2;

    aput-object v1, v0, v3

    sput-object v0, Lio/branch/search/j2;->c:[Lio/branch/search/j2;

    new-instance v0, Lio/branch/search/j2$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/j2$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/j2;->Companion:Lio/branch/search/j2$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/branch/search/j2;
    .locals 1

    const-class v0, Lio/branch/search/j2;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/branch/search/j2;

    return-object p0
.end method

.method public static values()[Lio/branch/search/j2;
    .locals 1

    sget-object v0, Lio/branch/search/j2;->c:[Lio/branch/search/j2;

    invoke-virtual {v0}, [Lio/branch/search/j2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/branch/search/j2;

    return-object v0
.end method
