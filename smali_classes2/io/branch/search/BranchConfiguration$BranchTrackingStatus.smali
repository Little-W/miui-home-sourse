.class public final enum Lio/branch/search/BranchConfiguration$BranchTrackingStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/BranchConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BranchTrackingStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/branch/search/BranchConfiguration$BranchTrackingStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

.field public static final enum OPTED_IN:Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

.field public static final enum OPTED_OUT:Lio/branch/search/BranchConfiguration$BranchTrackingStatus;


# instance fields
.field public sqlValue:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    const/4 v1, 0x0

    const-string v2, "OPTED_OUT"

    invoke-direct {v0, v2, v1, v1}, Lio/branch/search/BranchConfiguration$BranchTrackingStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/branch/search/BranchConfiguration$BranchTrackingStatus;->OPTED_OUT:Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    new-instance v2, Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    const/4 v3, 0x1

    const-string v4, "OPTED_IN"

    invoke-direct {v2, v4, v3, v3}, Lio/branch/search/BranchConfiguration$BranchTrackingStatus;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/branch/search/BranchConfiguration$BranchTrackingStatus;->OPTED_IN:Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    const/4 v4, 0x2

    new-array v4, v4, [Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    aput-object v0, v4, v1

    aput-object v2, v4, v3

    sput-object v4, Lio/branch/search/BranchConfiguration$BranchTrackingStatus;->$VALUES:[Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lio/branch/search/BranchConfiguration$BranchTrackingStatus;->sqlValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/branch/search/BranchConfiguration$BranchTrackingStatus;
    .locals 1

    const-class v0, Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    return-object p0
.end method

.method public static values()[Lio/branch/search/BranchConfiguration$BranchTrackingStatus;
    .locals 1

    sget-object v0, Lio/branch/search/BranchConfiguration$BranchTrackingStatus;->$VALUES:[Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    invoke-virtual {v0}, [Lio/branch/search/BranchConfiguration$BranchTrackingStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    return-object v0
.end method
