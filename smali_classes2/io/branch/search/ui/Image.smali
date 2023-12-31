.class public interface abstract Lio/branch/search/ui/Image;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/ui/Image$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/ui/Image$Companion;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lio/branch/search/ui/Image$Companion;->$$INSTANCE:Lio/branch/search/ui/Image$Companion;

    sput-object v0, Lio/branch/search/ui/Image;->Companion:Lio/branch/search/ui/Image$Companion;

    return-void
.end method


# virtual methods
.method public abstract load(Landroid/widget/ImageView;)V
.end method
