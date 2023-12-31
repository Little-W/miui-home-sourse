.class Lcom/miui/home/recents/settings/NavigationBarTypeSP$Holder;
.super Ljava/lang/Object;
.source "NavigationBarTypeSP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/settings/NavigationBarTypeSP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static sInstance:Lcom/miui/home/recents/settings/NavigationBarTypeSP;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/miui/home/recents/settings/NavigationBarTypeSP;

    invoke-direct {v0}, Lcom/miui/home/recents/settings/NavigationBarTypeSP;-><init>()V

    sput-object v0, Lcom/miui/home/recents/settings/NavigationBarTypeSP$Holder;->sInstance:Lcom/miui/home/recents/settings/NavigationBarTypeSP;

    return-void
.end method

.method static synthetic access$000()Lcom/miui/home/recents/settings/NavigationBarTypeSP;
    .locals 1

    .line 14
    sget-object v0, Lcom/miui/home/recents/settings/NavigationBarTypeSP$Holder;->sInstance:Lcom/miui/home/recents/settings/NavigationBarTypeSP;

    return-object v0
.end method
