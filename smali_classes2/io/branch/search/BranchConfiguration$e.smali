.class public final enum Lio/branch/search/BranchConfiguration$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/BranchConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/branch/search/BranchConfiguration$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lio/branch/search/BranchConfiguration$e;

.field public static final enum c:Lio/branch/search/BranchConfiguration$e;

.field public static final enum d:Lio/branch/search/BranchConfiguration$e;

.field public static final enum e:Lio/branch/search/BranchConfiguration$e;

.field public static final enum f:Lio/branch/search/BranchConfiguration$e;

.field public static final enum g:Lio/branch/search/BranchConfiguration$e;

.field public static final enum h:Lio/branch/search/BranchConfiguration$e;

.field public static final enum i:Lio/branch/search/BranchConfiguration$e;

.field public static final enum j:Lio/branch/search/BranchConfiguration$e;

.field public static final enum k:Lio/branch/search/BranchConfiguration$e;

.field public static final enum l:Lio/branch/search/BranchConfiguration$e;

.field public static final enum m:Lio/branch/search/BranchConfiguration$e;

.field public static final enum n:Lio/branch/search/BranchConfiguration$e;

.field public static final enum o:Lio/branch/search/BranchConfiguration$e;

.field public static final enum p:Lio/branch/search/BranchConfiguration$e;

.field public static final enum q:Lio/branch/search/BranchConfiguration$e;

.field public static final enum r:Lio/branch/search/BranchConfiguration$e;

.field public static final synthetic s:[Lio/branch/search/BranchConfiguration$e;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 20

    new-instance v0, Lio/branch/search/BranchConfiguration$e;

    const-string v1, "BranchKey"

    const-string v2, "branch_key"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lio/branch/search/BranchConfiguration$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/branch/search/BranchConfiguration$e;->b:Lio/branch/search/BranchConfiguration$e;

    new-instance v1, Lio/branch/search/BranchConfiguration$e;

    const-string v2, "Country"

    const-string v4, "country"

    const/4 v5, 0x1

    invoke-direct {v1, v2, v5, v4}, Lio/branch/search/BranchConfiguration$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lio/branch/search/BranchConfiguration$e;->c:Lio/branch/search/BranchConfiguration$e;

    new-instance v2, Lio/branch/search/BranchConfiguration$e;

    const-string v4, "CountryNetwork"

    const-string v6, "country_network"

    const/4 v7, 0x2

    invoke-direct {v2, v4, v7, v6}, Lio/branch/search/BranchConfiguration$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lio/branch/search/BranchConfiguration$e;->d:Lio/branch/search/BranchConfiguration$e;

    new-instance v4, Lio/branch/search/BranchConfiguration$e;

    const-string v6, "CountrySim"

    const-string v8, "country_sim"

    const/4 v9, 0x3

    invoke-direct {v4, v6, v9, v8}, Lio/branch/search/BranchConfiguration$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lio/branch/search/BranchConfiguration$e;->e:Lio/branch/search/BranchConfiguration$e;

    new-instance v6, Lio/branch/search/BranchConfiguration$e;

    const-string v8, "CountryLocale"

    const-string v10, "country_locale"

    const/4 v11, 0x4

    invoke-direct {v6, v8, v11, v10}, Lio/branch/search/BranchConfiguration$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lio/branch/search/BranchConfiguration$e;->f:Lio/branch/search/BranchConfiguration$e;

    new-instance v8, Lio/branch/search/BranchConfiguration$e;

    const-string v10, "CountryToAttribute"

    const-string v12, "country_to_attribute"

    const/4 v13, 0x5

    invoke-direct {v8, v10, v13, v12}, Lio/branch/search/BranchConfiguration$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lio/branch/search/BranchConfiguration$e;->g:Lio/branch/search/BranchConfiguration$e;

    new-instance v10, Lio/branch/search/BranchConfiguration$e;

    const-string v12, "CarrierToAttribute"

    const-string v14, "carrier_to_attribute"

    const/4 v15, 0x6

    invoke-direct {v10, v12, v15, v14}, Lio/branch/search/BranchConfiguration$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lio/branch/search/BranchConfiguration$e;->h:Lio/branch/search/BranchConfiguration$e;

    new-instance v12, Lio/branch/search/BranchConfiguration$e;

    const-string v14, "BrandToAttribute"

    const-string v15, "brand_to_attribute"

    const/4 v13, 0x7

    invoke-direct {v12, v14, v13, v15}, Lio/branch/search/BranchConfiguration$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lio/branch/search/BranchConfiguration$e;->i:Lio/branch/search/BranchConfiguration$e;

    new-instance v14, Lio/branch/search/BranchConfiguration$e;

    const-string v15, "ModelToAttribute"

    const-string v13, "model_to_attribute"

    const/16 v11, 0x8

    invoke-direct {v14, v15, v11, v13}, Lio/branch/search/BranchConfiguration$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lio/branch/search/BranchConfiguration$e;->j:Lio/branch/search/BranchConfiguration$e;

    new-instance v13, Lio/branch/search/BranchConfiguration$e;

    const-string v15, "CustomAttribution"

    const-string v11, "custom_attribution"

    const/16 v9, 0x9

    invoke-direct {v13, v15, v9, v11}, Lio/branch/search/BranchConfiguration$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lio/branch/search/BranchConfiguration$e;->k:Lio/branch/search/BranchConfiguration$e;

    new-instance v11, Lio/branch/search/BranchConfiguration$e;

    const-string v15, "GAID"

    const-string v9, "gaid"

    const/16 v7, 0xa

    invoke-direct {v11, v15, v7, v9}, Lio/branch/search/BranchConfiguration$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lio/branch/search/BranchConfiguration$e;->l:Lio/branch/search/BranchConfiguration$e;

    new-instance v9, Lio/branch/search/BranchConfiguration$e;

    const-string v15, "LAT"

    const-string v7, "is_lat"

    const/16 v5, 0xb

    invoke-direct {v9, v15, v5, v7}, Lio/branch/search/BranchConfiguration$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lio/branch/search/BranchConfiguration$e;->m:Lio/branch/search/BranchConfiguration$e;

    new-instance v7, Lio/branch/search/BranchConfiguration$e;

    const-string v15, "Personalization"

    const-string v5, "personalize_results"

    const/16 v3, 0xc

    invoke-direct {v7, v15, v3, v5}, Lio/branch/search/BranchConfiguration$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lio/branch/search/BranchConfiguration$e;->n:Lio/branch/search/BranchConfiguration$e;

    new-instance v5, Lio/branch/search/BranchConfiguration$e;

    const-string v15, "RequestExtra"

    const-string v3, "extra_data"

    move-object/from16 v16, v7

    const/16 v7, 0xd

    invoke-direct {v5, v15, v7, v3}, Lio/branch/search/BranchConfiguration$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lio/branch/search/BranchConfiguration$e;->o:Lio/branch/search/BranchConfiguration$e;

    new-instance v3, Lio/branch/search/BranchConfiguration$e;

    sget-object v15, Lio/branch/search/e$a;->h:Lio/branch/search/e$a;

    invoke-virtual {v15}, Lio/branch/search/e$a;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v7, "Locale"

    move-object/from16 v17, v5

    const/16 v5, 0xe

    invoke-direct {v3, v7, v5, v15}, Lio/branch/search/BranchConfiguration$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lio/branch/search/BranchConfiguration$e;->p:Lio/branch/search/BranchConfiguration$e;

    new-instance v7, Lio/branch/search/BranchConfiguration$e;

    const-string v15, "TrackingStatus"

    const-string v5, "tracking_status"

    move-object/from16 v18, v3

    const/16 v3, 0xf

    invoke-direct {v7, v15, v3, v5}, Lio/branch/search/BranchConfiguration$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lio/branch/search/BranchConfiguration$e;->q:Lio/branch/search/BranchConfiguration$e;

    new-instance v3, Lio/branch/search/BranchConfiguration$e;

    const-string v5, "TrackingStatusTimestamp"

    const-string v15, "tracking_status_timestamp"

    move-object/from16 v19, v7

    const/16 v7, 0x10

    invoke-direct {v3, v5, v7, v15}, Lio/branch/search/BranchConfiguration$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lio/branch/search/BranchConfiguration$e;->r:Lio/branch/search/BranchConfiguration$e;

    const/16 v5, 0x11

    new-array v5, v5, [Lio/branch/search/BranchConfiguration$e;

    const/4 v7, 0x0

    aput-object v0, v5, v7

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v4, v5, v0

    const/4 v0, 0x4

    aput-object v6, v5, v0

    const/4 v0, 0x5

    aput-object v8, v5, v0

    const/4 v0, 0x6

    aput-object v10, v5, v0

    const/4 v0, 0x7

    aput-object v12, v5, v0

    const/16 v0, 0x8

    aput-object v14, v5, v0

    const/16 v0, 0x9

    aput-object v13, v5, v0

    const/16 v0, 0xa

    aput-object v11, v5, v0

    const/16 v0, 0xb

    aput-object v9, v5, v0

    const/16 v0, 0xc

    aput-object v16, v5, v0

    const/16 v0, 0xd

    aput-object v17, v5, v0

    const/16 v0, 0xe

    aput-object v18, v5, v0

    const/16 v0, 0xf

    aput-object v19, v5, v0

    const/16 v0, 0x10

    aput-object v3, v5, v0

    sput-object v5, Lio/branch/search/BranchConfiguration$e;->s:[Lio/branch/search/BranchConfiguration$e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lio/branch/search/BranchConfiguration$e;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/branch/search/BranchConfiguration$e;
    .locals 1

    const-class v0, Lio/branch/search/BranchConfiguration$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/branch/search/BranchConfiguration$e;

    return-object p0
.end method

.method public static values()[Lio/branch/search/BranchConfiguration$e;
    .locals 1

    sget-object v0, Lio/branch/search/BranchConfiguration$e;->s:[Lio/branch/search/BranchConfiguration$e;

    invoke-virtual {v0}, [Lio/branch/search/BranchConfiguration$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/branch/search/BranchConfiguration$e;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/branch/search/BranchConfiguration$e;->a:Ljava/lang/String;

    return-object v0
.end method
