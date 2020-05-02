.class public Les/usc/citius/servando/calendula/activities/ConfirmActivity;
.super Les/usc/citius/servando/calendula/CalendulaActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Les/usc/citius/servando/calendula/activities/ConfirmActivity$ConfirmItemAdapter;,
        Les/usc/citius/servando/calendula/activities/ConfirmActivity$ConfirmStateChangeEvent;
    }
.end annotation


# static fields
.field private static final DEFAULT_CHECK_MARGIN:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ConfirmActivity"


# instance fields
.field private action:Ljava/lang/String;

.field protected appBarLayout:Landroid/support/design/widget/AppBarLayout;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field protected avatar:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field protected avatarTitle:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field protected checkAllImage:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field protected checkAllOverlay:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field private checkedIcon:Lcom/mikepenz/iconics/b;

.field private color:I

.field private date:Lorg/joda/time/LocalDate;

.field private dateFormatter:Lorg/joda/time/format/DateTimeFormatter;

.field protected fab:Landroid/support/design/widget/FloatingActionButton;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field protected friendlyTime:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field private fromNotification:Z

.field protected hour:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field private isDistant:Z

.field private isInWindow:Z

.field private isRoutine:Z

.field private isToday:Z

.field private itemAdapter:Les/usc/citius/servando/calendula/activities/ConfirmActivity$ConfirmItemAdapter;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Les/usc/citius/servando/calendula/persistence/DailyScheduleItem;",
            ">;"
        }
    .end annotation
.end field

.field protected listView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field protected minute:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field private patient:Les/usc/citius/servando/calendula/persistence/Patient;

.field private position:I

.field private relativeTime:Ljava/lang/String;

.field private routine:Les/usc/citius/servando/calendula/persistence/Routine;

.field private schedule:Les/usc/citius/servando/calendula/persistence/Schedule;

.field private stateChanged:Z

.field protected takeMedsMessage:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field private time:Lorg/joda/time/LocalTime;

.field private timeFormatter:Lorg/joda/time/format/DateTimeFormatter;

.field protected title:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field protected titleTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field protected toolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field protected toolbarTitle:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field private uncheckedIcon:Lcom/mikepenz/iconics/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Les/usc/citius/servando/calendula/CalendulaActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->fromNotification:Z

    iput-boolean v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->stateChanged:Z

    const-string v0, "dd/MM/YYYY"

    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    iput-object v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->dateFormatter:Lorg/joda/time/format/DateTimeFormatter;

    const-string v0, "HH:mm"

    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    iput-object v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->timeFormatter:Lorg/joda/time/format/DateTimeFormatter;

    const/4 v0, -0x1

    iput v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->position:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->items:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->relativeTime:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Les/usc/citius/servando/calendula/activities/ConfirmActivity;)Z
    .locals 0

    iget-boolean p0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->isRoutine:Z

    return p0
.end method

.method static synthetic access$100(Les/usc/citius/servando/calendula/activities/ConfirmActivity;)Les/usc/citius/servando/calendula/persistence/Routine;
    .locals 0

    iget-object p0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->routine:Les/usc/citius/servando/calendula/persistence/Routine;

    return-object p0
.end method

.method static synthetic access$1002(Les/usc/citius/servando/calendula/activities/ConfirmActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->stateChanged:Z

    return p1
.end method

.method static synthetic access$200(Les/usc/citius/servando/calendula/activities/ConfirmActivity;)Lorg/joda/time/LocalDate;
    .locals 0

    iget-object p0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->date:Lorg/joda/time/LocalDate;

    return-object p0
.end method

.method static synthetic access$300(Les/usc/citius/servando/calendula/activities/ConfirmActivity;)Les/usc/citius/servando/calendula/persistence/Schedule;
    .locals 0

    iget-object p0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->schedule:Les/usc/citius/servando/calendula/persistence/Schedule;

    return-object p0
.end method

.method static synthetic access$400(Les/usc/citius/servando/calendula/activities/ConfirmActivity;)Lorg/joda/time/LocalTime;
    .locals 0

    iget-object p0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->time:Lorg/joda/time/LocalTime;

    return-object p0
.end method

.method static synthetic access$500(Les/usc/citius/servando/calendula/activities/ConfirmActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->items:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Les/usc/citius/servando/calendula/activities/ConfirmActivity;)V
    .locals 0

    invoke-direct {p0}, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->animateAllChecked()V

    return-void
.end method

.method static synthetic access$700(Les/usc/citius/servando/calendula/activities/ConfirmActivity;)Z
    .locals 0

    iget-boolean p0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->isDistant:Z

    return p0
.end method

.method static synthetic access$800(Les/usc/citius/servando/calendula/activities/ConfirmActivity;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-direct {p0, p1}, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->getCheckedIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Les/usc/citius/servando/calendula/activities/ConfirmActivity;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-direct {p0, p1}, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->getUncheckedIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private animateAllChecked()V
    .locals 6

    iget-object v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButton;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    iget-object v2, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v2}, Landroid/support/design/widget/FloatingActionButton;->getX()F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v2, v1

    invoke-virtual {p0}, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v3, 0x43160000    # 150.0f

    invoke-static {v1, v3}, Les/usc/citius/servando/calendula/util/ScreenUtils;->dpToPx(Landroid/content/res/Resources;F)I

    move-result v1

    iget-object v3, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v3}, Landroid/support/design/widget/FloatingActionButton;->getY()F

    move-result v3

    iget-object v4, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v4}, Landroid/support/design/widget/FloatingActionButton;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v3, v1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_0

    new-instance v4, Les/usc/citius/servando/calendula/util/view/ArcTranslateAnimation;

    neg-int v2, v2

    int-to-float v2, v2

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v5, 0x0

    invoke-direct {v4, v5, v2, v5, v1}, Les/usc/citius/servando/calendula/util/view/ArcTranslateAnimation;-><init>(FFFF)V

    new-instance v1, Les/usc/citius/servando/calendula/activities/ConfirmActivity$7;

    invoke-direct {v1, p0, v0, v3}, Les/usc/citius/servando/calendula/activities/ConfirmActivity$7;-><init>(Les/usc/citius/servando/calendula/activities/ConfirmActivity;II)V

    invoke-virtual {v4, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {v4, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, v4}, Landroid/support/design/widget/FloatingActionButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Les/usc/citius/servando/calendula/activities/ConfirmActivity$8;

    invoke-direct {v2, p0, v0, v3}, Les/usc/citius/servando/calendula/activities/ConfirmActivity$8;-><init>(Les/usc/citius/servando/calendula/activities/ConfirmActivity;II)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method private getCheckedIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->checkedIcon:Lcom/mikepenz/iconics/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mikepenz/iconics/b;

    sget-object v1, Lcom/mikepenz/community_material_typeface_library/CommunityMaterial$a;->gq:Lcom/mikepenz/community_material_typeface_library/CommunityMaterial$a;

    invoke-direct {v0, p0, v1}, Lcom/mikepenz/iconics/b;-><init>(Landroid/content/Context;Lcom/mikepenz/iconics/b/a;)V

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/b;->j(I)Lcom/mikepenz/iconics/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/b;->g(I)Lcom/mikepenz/iconics/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mikepenz/iconics/b;->a(I)Lcom/mikepenz/iconics/b;

    move-result-object p1

    iput-object p1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->checkedIcon:Lcom/mikepenz/iconics/b;

    :cond_0
    iget-object p1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->checkedIcon:Lcom/mikepenz/iconics/b;

    return-object p1
.end method

.method private getUncheckedIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->uncheckedIcon:Lcom/mikepenz/iconics/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mikepenz/iconics/b;

    sget-object v1, Lcom/mikepenz/community_material_typeface_library/CommunityMaterial$a;->gm:Lcom/mikepenz/community_material_typeface_library/CommunityMaterial$a;

    invoke-direct {v0, p0, v1}, Lcom/mikepenz/iconics/b;-><init>(Landroid/content/Context;Lcom/mikepenz/iconics/b/a;)V

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/b;->j(I)Lcom/mikepenz/iconics/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/b;->g(I)Lcom/mikepenz/iconics/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mikepenz/iconics/b;->a(I)Lcom/mikepenz/iconics/b;

    move-result-object p1

    iput-object p1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->uncheckedIcon:Lcom/mikepenz/iconics/b;

    :cond_0
    iget-object p1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->uncheckedIcon:Lcom/mikepenz/iconics/b;

    return-object p1
.end method

.method private loadItems()V
    .locals 5

    iget-boolean v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->isRoutine:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->routine:Les/usc/citius/servando/calendula/persistence/Routine;

    invoke-virtual {v0}, Les/usc/citius/servando/calendula/persistence/Routine;->getScheduleItems()Ljava/util/List;

    move-result-object v0

    const-string v1, "ConfirmActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " items"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Les/usc/citius/servando/calendula/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Les/usc/citius/servando/calendula/persistence/ScheduleItem;

    invoke-static {}, Les/usc/citius/servando/calendula/database/DB;->dailyScheduleItems()Les/usc/citius/servando/calendula/database/DailyScheduleItemDao;

    move-result-object v2

    iget-object v3, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->date:Lorg/joda/time/LocalDate;

    invoke-virtual {v2, v1, v3}, Les/usc/citius/servando/calendula/database/DailyScheduleItemDao;->findByScheduleItemAndDate(Les/usc/citius/servando/calendula/persistence/ScheduleItem;Lorg/joda/time/LocalDate;)Les/usc/citius/servando/calendula/persistence/DailyScheduleItem;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->items:Ljava/util/List;

    invoke-static {}, Les/usc/citius/servando/calendula/database/DB;->dailyScheduleItems()Les/usc/citius/servando/calendula/database/DailyScheduleItemDao;

    move-result-object v1

    iget-object v2, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->schedule:Les/usc/citius/servando/calendula/persistence/Schedule;

    iget-object v3, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->date:Lorg/joda/time/LocalDate;

    iget-object v4, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->time:Lorg/joda/time/LocalTime;

    invoke-virtual {v1, v2, v3, v4}, Les/usc/citius/servando/calendula/database/DailyScheduleItemDao;->findBy(Les/usc/citius/servando/calendula/persistence/Schedule;Lorg/joda/time/LocalDate;Lorg/joda/time/LocalTime;)Les/usc/citius/servando/calendula/persistence/DailyScheduleItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Les/usc/citius/servando/calendula/persistence/DailyScheduleItem;

    const-string v2, "ConfirmActivity"

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Les/usc/citius/servando/calendula/persistence/DailyScheduleItem;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    const-string v1, "Null"

    :goto_2
    invoke-static {v2, v1}, Les/usc/citius/servando/calendula/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method private onAllChecked()V
    .locals 4

    iget-boolean v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->isRoutine:Z

    if-eqz v0, :cond_0

    invoke-static {}, Les/usc/citius/servando/calendula/scheduling/AlarmScheduler;->instance()Les/usc/citius/servando/calendula/scheduling/AlarmScheduler;

    move-result-object v0

    iget-object v1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->routine:Les/usc/citius/servando/calendula/persistence/Routine;

    iget-object v2, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->date:Lorg/joda/time/LocalDate;

    invoke-virtual {v0, v1, v2, p0}, Les/usc/citius/servando/calendula/scheduling/AlarmScheduler;->onIntakeCompleted(Les/usc/citius/servando/calendula/persistence/Routine;Lorg/joda/time/LocalDate;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Les/usc/citius/servando/calendula/scheduling/AlarmScheduler;->instance()Les/usc/citius/servando/calendula/scheduling/AlarmScheduler;

    move-result-object v0

    iget-object v1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->schedule:Les/usc/citius/servando/calendula/persistence/Schedule;

    iget-object v2, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->time:Lorg/joda/time/LocalTime;

    iget-object v3, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->date:Lorg/joda/time/LocalDate;

    invoke-virtual {v0, v1, v2, v3, p0}, Les/usc/citius/servando/calendula/scheduling/AlarmScheduler;->onIntakeCompleted(Les/usc/citius/servando/calendula/persistence/Schedule;Lorg/joda/time/LocalTime;Lorg/joda/time/LocalDate;Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private processIntent()V
    .locals 10

    invoke-virtual {p0}, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "routine_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "schedule_id"

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "date"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "schedule_time"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "action"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->action:Ljava/lang/String;

    const-string v7, "position"

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->position:I

    iget v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->position:I

    const/4 v7, 0x1

    if-ne v0, v8, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->fromNotification:Z

    if-eqz v5, :cond_1

    iget-object v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->dateFormatter:Lorg/joda/time/format/DateTimeFormatter;

    invoke-static {v5, v0}, Lorg/joda/time/LocalDate;->parse(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalDate;

    move-result-object v0

    iput-object v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->date:Lorg/joda/time/LocalDate;

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v8, Les/usc/citius/servando/calendula/HomePagerActivity;

    invoke-direct {v0, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "invalid_notification_error"

    invoke-virtual {v0, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->finish()V

    :goto_1
    const-string v0, "ConfirmActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->date:Lorg/joda/time/LocalDate;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Les/usc/citius/servando/calendula/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v0, v8, v2

    if-eqz v0, :cond_2

    iput-boolean v7, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->isRoutine:Z

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Les/usc/citius/servando/calendula/persistence/Routine;->findById(J)Les/usc/citius/servando/calendula/persistence/Routine;

    move-result-object v0

    iput-object v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->routine:Les/usc/citius/servando/calendula/persistence/Routine;

    iget-object v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->routine:Les/usc/citius/servando/calendula/persistence/Routine;

    invoke-virtual {v0}, Les/usc/citius/servando/calendula/persistence/Routine;->getTime()Lorg/joda/time/LocalTime;

    move-result-object v0

    iput-object v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->time:Lorg/joda/time/LocalTime;

    iget-object v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->routine:Les/usc/citius/servando/calendula/persistence/Routine;

    invoke-virtual {v0}, Les/usc/citius/servando/calendula/persistence/Routine;->getPatient()Les/usc/citius/servando/calendula/persistence/Patient;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->patient:Les/usc/citius/servando/calendula/persistence/Patient;

    goto :goto_3

    :cond_2
    iget-object v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->timeFormatter:Lorg/joda/time/format/DateTimeFormatter;

    invoke-static {v6, v0}, Lorg/joda/time/LocalTime;->parse(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalTime;

    move-result-object v0

    iput-object v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->time:Lorg/joda/time/LocalTime;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Les/usc/citius/servando/calendula/persistence/Schedule;->findById(J)Les/usc/citius/servando/calendula/persistence/Schedule;

    move-result-object v0

    iput-object v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->schedule:Les/usc/citius/servando/calendula/persistence/Schedule;

    iget-object v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->schedule:Les/usc/citius/servando/calendula/persistence/Schedule;

    invoke-virtual {v0}, Les/usc/citius/servando/calendula/persistence/Schedule;->patient()Les/usc/citius/servando/calendula/persistence/Patient;

    move-result-object v0

    goto :goto_2

    :goto_3
    return-void
.end method

.method private setupListView()V
    .locals 2

    invoke-direct {p0}, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->loadItems()V

    new-instance v0, Les/usc/citius/servando/calendula/activities/ConfirmActivity$ConfirmItemAdapter;

    invoke-direct {v0, p0}, Les/usc/citius/servando/calendula/activities/ConfirmActivity$ConfirmItemAdapter;-><init>(Les/usc/citius/servando/calendula/activities/ConfirmActivity;)V

    iput-object v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->itemAdapter:Les/usc/citius/servando/calendula/activities/ConfirmActivity$ConfirmItemAdapter;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->listView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$i;)V

    iget-object v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->listView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->itemAdapter:Les/usc/citius/servando/calendula/activities/ConfirmActivity$ConfirmItemAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    iget-object v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->listView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/ah;

    invoke-direct {v1}, Landroid/support/v7/widget/ah;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$f;)V

    return-void
.end method

.method private showRipple(III)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const-string v0, "ConfirmActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ripple x,y ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Les/usc/citius/servando/calendula/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->checkAllOverlay:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->checkAllOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->checkAllOverlay:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-int v0, v0

    iget-object v1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->checkAllOverlay:Landroid/view/View;

    iget-object v2, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v2}, Landroid/support/design/widget/FloatingActionButton;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    int-to-float v0, v0

    invoke-static {v1, p1, p2, v2, v0}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->checkAllOverlay:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    int-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCheckMarginInterval(Lorg/joda/time/DateTime;)Landroid/support/v4/i/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/joda/time/DateTime;",
            ")",
            "Landroid/support/v4/i/j<",
            "Lorg/joda/time/DateTime;",
            "Lorg/joda/time/DateTime;",
            ">;"
        }
    .end annotation

    sget-object v0, Les/usc/citius/servando/calendula/util/PreferenceKeys;->CONFIRM_CHECK_WINDOW_MARGIN:Les/usc/citius/servando/calendula/util/PreferenceKeys;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Les/usc/citius/servando/calendula/util/PreferenceUtils;->getString(Les/usc/citius/servando/calendula/util/PreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x1e

    invoke-virtual {p1, v1}, Lorg/joda/time/DateTime;->minusMinutes(I)Lorg/joda/time/DateTime;

    move-result-object v1

    invoke-virtual {p1, v0}, Lorg/joda/time/DateTime;->plusHours(I)Lorg/joda/time/DateTime;

    move-result-object p1

    new-instance v0, Landroid/support/v4/i/j;

    invoke-direct {v0, v1, p1}, Landroid/support/v4/i/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getDisplayableDose(DLjava/lang/String;Les/usc/citius/servando/calendula/persistence/Medicine;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Les/usc/citius/servando/calendula/persistence/Medicine;->getPresentation()Les/usc/citius/servando/calendula/persistence/Presentation;

    move-result-object p3

    invoke-virtual {p0}, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p3, p4, p1, p2}, Les/usc/citius/servando/calendula/persistence/Presentation;->units(Landroid/content/res/Resources;D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method moveArrowsDown(I)V
    .locals 3

    iget-object v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->checkAllImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x43160000    # 150.0f

    invoke-static {v1, v2}, Les/usc/citius/servando/calendula/util/ScreenUtils;->dpToPx(Landroid/content/res/Resources;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    iget-boolean v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->fromNotification:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->finishAndRemoveTask()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->finish()V

    goto :goto_0

    :cond_1
    invoke-super {p0}, Les/usc/citius/servando/calendula/CalendulaActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method onClickFab()V
    .locals 5

    iget-object v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Les/usc/citius/servando/calendula/persistence/DailyScheduleItem;

    invoke-virtual {v2}, Les/usc/citius/servando/calendula/persistence/DailyScheduleItem;->getTakenToday()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v3}, Les/usc/citius/servando/calendula/persistence/DailyScheduleItem;->setTakenToday(Z)V

    invoke-static {}, Les/usc/citius/servando/calendula/database/DB;->dailyScheduleItems()Les/usc/citius/servando/calendula/database/DailyScheduleItemDao;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Les/usc/citius/servando/calendula/database/DailyScheduleItemDao;->saveAndUpdateStock(Les/usc/citius/servando/calendula/persistence/DailyScheduleItem;Z)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    iget-object v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->itemAdapter:Les/usc/citius/servando/calendula/activities/ConfirmActivity$ConfirmItemAdapter;

    invoke-virtual {v0}, Les/usc/citius/servando/calendula/activities/ConfirmActivity$ConfirmItemAdapter;->notifyDataSetChanged()V

    iput-boolean v3, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->stateChanged:Z

    iget-object v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->fab:Landroid/support/design/widget/FloatingActionButton;

    new-instance v1, Les/usc/citius/servando/calendula/activities/ConfirmActivity$4;

    invoke-direct {v1, p0}, Les/usc/citius/servando/calendula/activities/ConfirmActivity$4;-><init>(Les/usc/citius/servando/calendula/activities/ConfirmActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/design/widget/FloatingActionButton;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0}, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->onAllChecked()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->supportFinishAfterTransition()V

    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1}, Les/usc/citius/servando/calendula/CalendulaActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->processIntent()V

    const p1, 0x7f0b0020

    invoke-virtual {p0, p1}, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->setContentView(I)V

    invoke-static {p0}, Lbutterknife/ButterKnife;->a(Landroid/app/Activity;)Lbutterknife/Unbinder;

    invoke-virtual {p0}, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x400000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-static {}, Lorg/joda/time/LocalDate;->now()Lorg/joda/time/LocalDate;

    move-result-object p1

    iget-object v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->date:Lorg/joda/time/LocalDate;

    invoke-virtual {p1, v0}, Lorg/joda/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->isToday:Z

    iget-object p1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->date:Lorg/joda/time/LocalDate;

    iget-object v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->time:Lorg/joda/time/LocalTime;

    invoke-virtual {p1, v0}, Lorg/joda/time/LocalDate;->toDateTime(Lorg/joda/time/LocalTime;)Lorg/joda/time/DateTime;

    move-result-object p1

    invoke-static {p1}, Les/usc/citius/servando/calendula/scheduling/AlarmScheduler;->isWithinDefaultMargins(Lorg/joda/time/DateTime;)Z

    move-result p1

    iput-boolean p1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->isInWindow:Z

    iget-object p1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->date:Lorg/joda/time/LocalDate;

    iget-object v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->time:Lorg/joda/time/LocalTime;

    invoke-virtual {p1, v0}, Lorg/joda/time/LocalDate;->toDateTime(Lorg/joda/time/LocalTime;)Lorg/joda/time/DateTime;

    move-result-object p1

    invoke-static {}, Lorg/joda/time/DateTime;->now()Lorg/joda/time/DateTime;

    move-result-object v0

    invoke-virtual {p0, p1}, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->getCheckMarginInterval(Lorg/joda/time/DateTime;)Landroid/support/v4/i/j;

    move-result-object v1

    new-instance v2, Lorg/joda/time/Interval;

    iget-object v3, v1, Landroid/support/v4/i/j;->a:Ljava/lang/Object;

    check-cast v3, Lorg/joda/time/ReadableInstant;

    iget-object v1, v1, Landroid/support/v4/i/j;->b:Ljava/lang/Object;

    check-cast v1, Lorg/joda/time/ReadableInstant;

    invoke-direct {v2, v3, v1}, Lorg/joda/time/Interval;-><init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)V

    invoke-virtual {v2, v0}, Lorg/joda/time/Interval;->contains(Lorg/joda/time/ReadableInstant;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->isDistant:Z

    invoke-virtual {p0}, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->patient:Les/usc/citius/servando/calendula/persistence/Patient;

    invoke-virtual {v3}, Les/usc/citius/servando/calendula/persistence/Patient;->getAvatar()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Les/usc/citius/servando/calendula/util/AvatarMgr;->colorsFor(Landroid/content/res/Resources;Ljava/lang/String;)[I

    move-result-object v1

    const/4 v3, 0x0

    aget v1, v1, v3

    iput v1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->color:I

    const-string v1, "#263238"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->color:I

    invoke-virtual {p0, v3}, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->setupStatusBar(I)Les/usc/citius/servando/calendula/CalendulaActivity;

    const-string v1, ""

    const/4 v4, -0x1

    invoke-virtual {p0, v1, v3, v4}, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->setupToolbar(Ljava/lang/String;II)Les/usc/citius/servando/calendula/CalendulaActivity;

    iget-object v1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    iget-object v1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->avatar:Landroid/widget/ImageView;

    iget-object v5, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->patient:Les/usc/citius/servando/calendula/persistence/Patient;

    invoke-virtual {v5}, Les/usc/citius/servando/calendula/persistence/Patient;->getAvatar()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Les/usc/citius/servando/calendula/util/AvatarMgr;->res(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->avatarTitle:Landroid/widget/ImageView;

    iget-object v5, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->patient:Les/usc/citius/servando/calendula/persistence/Patient;

    invoke-virtual {v5}, Les/usc/citius/servando/calendula/persistence/Patient;->getAvatar()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Les/usc/citius/servando/calendula/util/AvatarMgr;->res(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->titleTitle:Landroid/widget/TextView;

    iget-object v5, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->patient:Les/usc/citius/servando/calendula/persistence/Patient;

    invoke-virtual {v5}, Les/usc/citius/servando/calendula/persistence/Patient;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->title:Landroid/widget/TextView;

    iget-boolean v5, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->isRoutine:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->routine:Les/usc/citius/servando/calendula/persistence/Routine;

    invoke-virtual {v5}, Les/usc/citius/servando/calendula/persistence/Routine;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    iget-object v5, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->schedule:Les/usc/citius/servando/calendula/persistence/Schedule;

    invoke-virtual {v5, p0}, Les/usc/citius/servando/calendula/persistence/Schedule;->toReadableString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->takeMedsMessage:Landroid/widget/TextView;

    iget-boolean v5, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->isInWindow:Z

    if-eqz v5, :cond_1

    const v5, 0x7f10002c

    invoke-virtual {p0, v5}, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f1006ec

    invoke-virtual {p0, v6}, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->date:Lorg/joda/time/LocalDate;

    const-string v7, "EEEE dd"

    invoke-virtual {v6, v7}, Lorg/joda/time/LocalDate;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v8

    const-wide/32 v10, 0x493e0

    const/high16 v12, 0x80000

    invoke-static/range {v6 .. v12}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->relativeTime:Ljava/lang/String;

    iget-object p1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->hour:Landroid/widget/TextView;

    iget-object v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->time:Lorg/joda/time/LocalTime;

    const-string v1, "HH:"

    invoke-virtual {v0, v1}, Lorg/joda/time/LocalTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->minute:Landroid/widget/TextView;

    iget-object v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->time:Lorg/joda/time/LocalTime;

    const-string v1, "mm"

    invoke-virtual {v0, v1}, Lorg/joda/time/LocalTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->friendlyTime:Landroid/widget/TextView;

    const-string v0, "%s%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->relativeTime:Ljava/lang/String;

    invoke-virtual {v5, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    iget-object v5, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->relativeTime:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->isDistant:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p0}, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    iget-object p1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->fab:Landroid/support/design/widget/FloatingActionButton;

    new-instance v0, Lcom/mikepenz/iconics/b;

    invoke-direct {v0, p0}, Lcom/mikepenz/iconics/b;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/mikepenz/community_material_typeface_library/CommunityMaterial$a;->gh:Lcom/mikepenz/community_material_typeface_library/CommunityMaterial$a;

    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/b;->a(Lcom/mikepenz/iconics/b/a;)Lcom/mikepenz/iconics/b;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/mikepenz/iconics/b;->a(I)Lcom/mikepenz/iconics/b;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/b;->j(I)Lcom/mikepenz/iconics/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/mikepenz/iconics/b;->g(I)Lcom/mikepenz/iconics/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->checkAllImage:Landroid/widget/ImageView;

    new-instance v0, Lcom/mikepenz/iconics/b;

    invoke-direct {v0, p0}, Lcom/mikepenz/iconics/b;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/mikepenz/community_material_typeface_library/CommunityMaterial$a;->gh:Lcom/mikepenz/community_material_typeface_library/CommunityMaterial$a;

    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/b;->a(Lcom/mikepenz/iconics/b/a;)Lcom/mikepenz/iconics/b;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/mikepenz/iconics/b;->a(I)Lcom/mikepenz/iconics/b;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/b;->j(I)Lcom/mikepenz/iconics/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/mikepenz/iconics/b;->g(I)Lcom/mikepenz/iconics/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->fab:Landroid/support/design/widget/FloatingActionButton;

    new-instance v0, Les/usc/citius/servando/calendula/activities/ConfirmActivity$6;

    invoke-direct {v0, p0}, Les/usc/citius/servando/calendula/activities/ConfirmActivity$6;-><init>(Les/usc/citius/servando/calendula/activities/ConfirmActivity;)V

    invoke-virtual {p1, v0}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->toolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->patient:Les/usc/citius/servando/calendula/persistence/Patient;

    invoke-virtual {v0}, Les/usc/citius/servando/calendula/persistence/Patient;->getColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setContentScrimColor(I)V

    invoke-direct {p0}, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->setupListView()V

    const-string p1, "delay"

    iget-object v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->action:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->isRoutine:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->routine:Les/usc/citius/servando/calendula/persistence/Routine;

    if-eqz p1, :cond_3

    iget-object p1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->routine:Les/usc/citius/servando/calendula/persistence/Routine;

    invoke-virtual {p1}, Les/usc/citius/servando/calendula/persistence/Routine;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-static {p1}, Les/usc/citius/servando/calendula/activities/ReminderNotification;->routineNotificationId(I)I

    move-result p1

    :goto_2
    invoke-static {p0, p1}, Les/usc/citius/servando/calendula/activities/ReminderNotification;->cancel(Landroid/content/Context;I)V

    goto :goto_3

    :cond_3
    iget-object p1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->schedule:Les/usc/citius/servando/calendula/persistence/Schedule;

    if-eqz p1, :cond_4

    iget-object p1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->schedule:Les/usc/citius/servando/calendula/persistence/Schedule;

    invoke-virtual {p1}, Les/usc/citius/servando/calendula/persistence/Schedule;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-static {p1}, Les/usc/citius/servando/calendula/activities/ReminderNotification;->scheduleNotificationId(I)I

    move-result p1

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {p0}, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->showDelayDialog()V

    :cond_5
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f09001c

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-boolean v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->isInWindow:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/mikepenz/iconics/b;

    invoke-direct {v0, p0}, Lcom/mikepenz/iconics/b;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/mikepenz/community_material_typeface_library/CommunityMaterial$a;->rb:Lcom/mikepenz/community_material_typeface_library/CommunityMaterial$a;

    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/b;->a(Lcom/mikepenz/iconics/b/a;)Lcom/mikepenz/iconics/b;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/b;->a(I)Lcom/mikepenz/iconics/b;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/b;->j(I)Lcom/mikepenz/iconics/b;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onDailyAgendaItemCheck(Landroid/widget/ImageButton;)V
    .locals 3

    iget-object p1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->items:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Les/usc/citius/servando/calendula/persistence/DailyScheduleItem;

    invoke-virtual {v2}, Les/usc/citius/servando/calendula/persistence/DailyScheduleItem;->getTakenToday()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne v1, p1, :cond_2

    invoke-direct {p0}, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->onAllChecked()V

    goto :goto_1

    :cond_2
    iget-boolean p1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->isRoutine:Z

    if-eqz p1, :cond_3

    invoke-static {}, Les/usc/citius/servando/calendula/scheduling/AlarmScheduler;->instance()Les/usc/citius/servando/calendula/scheduling/AlarmScheduler;

    move-result-object p1

    iget-object v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->routine:Les/usc/citius/servando/calendula/persistence/Routine;

    iget-object v1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->date:Lorg/joda/time/LocalDate;

    invoke-virtual {p1, v0, v1, p0}, Les/usc/citius/servando/calendula/scheduling/AlarmScheduler;->onDelayRoutine(Les/usc/citius/servando/calendula/persistence/Routine;Lorg/joda/time/LocalDate;Landroid/content/Context;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Les/usc/citius/servando/calendula/scheduling/AlarmScheduler;->instance()Les/usc/citius/servando/calendula/scheduling/AlarmScheduler;

    move-result-object p1

    iget-object v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->schedule:Les/usc/citius/servando/calendula/persistence/Schedule;

    iget-object v1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->time:Lorg/joda/time/LocalTime;

    iget-object v2, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->date:Lorg/joda/time/LocalDate;

    invoke-virtual {p1, v0, v1, v2, p0}, Les/usc/citius/servando/calendula/scheduling/AlarmScheduler;->onDelayHourlySchedule(Les/usc/citius/servando/calendula/persistence/Schedule;Lorg/joda/time/LocalTime;Lorg/joda/time/LocalDate;Landroid/content/Context;)V

    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    iget-boolean v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->stateChanged:Z

    if-eqz v0, :cond_0

    invoke-static {}, Les/usc/citius/servando/calendula/CalendulaApp;->eventBus()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Les/usc/citius/servando/calendula/activities/ConfirmActivity$ConfirmStateChangeEvent;

    iget v2, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->position:I

    invoke-direct {v1, v2}, Les/usc/citius/servando/calendula/activities/ConfirmActivity$ConfirmStateChangeEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0}, Les/usc/citius/servando/calendula/CalendulaActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Les/usc/citius/servando/calendula/CalendulaActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->finish()V

    invoke-virtual {p0, p1}, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f09001c

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Les/usc/citius/servando/calendula/CalendulaActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->showDelayDialog()V

    return v2

    :cond_1
    iget-boolean p1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->fromNotification:Z

    if-eqz p1, :cond_2

    new-instance p1, Landroid/content/Intent;

    const-class v0, Les/usc/citius/servando/calendula/activities/MedicinesActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->finish()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->supportFinishAfterTransition()V

    :goto_0
    return v2
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Les/usc/citius/servando/calendula/CalendulaActivity;->onResume()V

    return-void
.end method

.method public showDelayDialog()V
    .locals 4

    invoke-virtual {p0}, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f100725

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Les/usc/citius/servando/calendula/activities/ConfirmActivity$1;

    invoke-direct {v3, p0, v0}, Les/usc/citius/servando/calendula/activities/ConfirmActivity$1;-><init>(Les/usc/citius/servando/calendula/activities/ConfirmActivity;[I)V

    const v0, 0x7f030005

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public showEnsureConfirmDialog(Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 8

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->date:Lorg/joda/time/LocalDate;

    iget-object v2, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->time:Lorg/joda/time/LocalTime;

    invoke-virtual {v1, v2}, Lorg/joda/time/LocalDate;->toDateTime(Lorg/joda/time/LocalTime;)Lorg/joda/time/DateTime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/DateTime;->isAfterNow()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f100160

    invoke-virtual {p0, v2}, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f1006ec

    invoke-virtual {p0, v3}, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->date:Lorg/joda/time/LocalDate;

    const-string v4, "EEEE dd"

    invoke-virtual {v3, v4}, Lorg/joda/time/LocalDate;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f100039

    invoke-virtual {p0, v3}, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->time:Lorg/joda/time/LocalTime;

    iget-object v4, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->timeFormatter:Lorg/joda/time/format/DateTimeFormatter;

    invoke-virtual {v3, v4}, Lorg/joda/time/LocalTime;->toString(Lorg/joda/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1}, Lorg/joda/time/DateTime;->isAfterNow()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    const v3, 0x7f10005b

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->relativeTime:Ljava/lang/String;

    aput-object v7, v6, v4

    :goto_1
    invoke-virtual {p0, v3, v6}, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_2

    const v3, 0x7f10086f

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->relativeTime:Ljava/lang/String;

    aput-object v7, v6, v4

    goto :goto_1

    :cond_2
    const v3, 0x7f10005c

    invoke-virtual {p0, v3}, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget-object v4, Lcom/mikepenz/community_material_typeface_library/CommunityMaterial$a;->rb:Lcom/mikepenz/community_material_typeface_library/CommunityMaterial$a;

    const v5, 0x7f060049

    const/16 v6, 0x24

    invoke-static {p0, v4, v5, v6}, Les/usc/citius/servando/calendula/util/IconUtils;->icon(Landroid/content/Context;Lcom/mikepenz/iconics/b/a;II)Lcom/mikepenz/iconics/b;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Lorg/joda/time/DateTime;->isAfterNow()Z

    move-result v1

    if-eqz v1, :cond_3

    const p1, 0x7f10086d

    invoke-virtual {p0, p1}, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Les/usc/citius/servando/calendula/activities/ConfirmActivity$2;

    invoke-direct {p2, p0}, Les/usc/citius/servando/calendula/activities/ConfirmActivity$2;-><init>(Les/usc/citius/servando/calendula/activities/ConfirmActivity;)V

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_7

    :cond_3
    if-eqz p2, :cond_4

    const v1, 0x7f1006f0

    :goto_3
    invoke-virtual {p0, v1}, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_4
    const v1, 0x7f1006eb

    goto :goto_3

    :goto_4
    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    if-eqz p2, :cond_5

    const p2, 0x7f1006ef

    :goto_5
    invoke-virtual {p0, p2}, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_6

    :cond_5
    const p2, 0x7f1006ea

    goto :goto_5

    :goto_6
    new-instance v1, Les/usc/citius/servando/calendula/activities/ConfirmActivity$3;

    invoke-direct {v1, p0}, Les/usc/citius/servando/calendula/activities/ConfirmActivity$3;-><init>(Les/usc/citius/servando/calendula/activities/ConfirmActivity;)V

    invoke-virtual {p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_7
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method showRippleByApi(II)V
    .locals 4

    iget-object v0, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->checkAllOverlay:Landroid/view/View;

    new-instance v1, Les/usc/citius/servando/calendula/activities/ConfirmActivity$5;

    invoke-direct {v1, p0}, Les/usc/citius/servando/calendula/activities/ConfirmActivity$5;-><init>(Les/usc/citius/servando/calendula/activities/ConfirmActivity;)V

    const/16 v2, 0x320

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f4

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    invoke-direct {p0, p1, p2, v1}, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->showRipple(III)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->checkAllOverlay:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->checkAllOverlay:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    int-to-long v0, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    const/16 p1, 0x190

    invoke-virtual {p0, p1}, Les/usc/citius/servando/calendula/activities/ConfirmActivity;->moveArrowsDown(I)V

    return-void
.end method
