.class public abstract Lio/branch/search/ui/ImageLoadingStrategy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lio/branch/search/ui/Image;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/ui/ImageLoadingStrategy$AppIcon;,
        Lio/branch/search/ui/ImageLoadingStrategy$Url;,
        Lio/branch/search/ui/ImageLoadingStrategy$Shortcut;,
        Lio/branch/search/ui/ImageLoadingStrategy$FromCache;,
        Lio/branch/search/ui/ImageLoadingStrategy$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/ui/ImageLoadingStrategy$Companion;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/ui/ImageLoadingStrategy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/ui/ImageLoadingStrategy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/ui/ImageLoadingStrategy;->Companion:Lio/branch/search/ui/ImageLoadingStrategy$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/branch/search/ui/ImageLoadingStrategy;-><init>()V

    return-void
.end method
