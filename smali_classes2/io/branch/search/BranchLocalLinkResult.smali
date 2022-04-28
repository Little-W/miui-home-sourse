.class public Lio/branch/search/BranchLocalLinkResult;
.super Lio/branch/search/BranchBaseLinkResult;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/branch/search/BranchLocalLinkResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/branch/search/BranchLocalLinkResult$a;

    invoke-direct {v0}, Lio/branch/search/BranchLocalLinkResult$a;-><init>()V

    sput-object v0, Lio/branch/search/BranchLocalLinkResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/branch/search/BranchBaseLinkResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lio/branch/search/BranchLocalLinkResult$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/branch/search/BranchLocalLinkResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Lio/branch/search/k;Ljava/lang/String;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lio/branch/search/BranchBaseLinkResult;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lio/branch/search/k;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method
